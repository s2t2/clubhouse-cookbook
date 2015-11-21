#
# LOG NODE ATTRIBUTES
#

[
  "hostname", "fqdn", "domain", "ipaddress", "macaddress", "ip6address",
  "platform", "platform_version", "platform_family",
  "os", "os_version", "memory", "filesystem", "block_device", "cpu", "ebs",
  "uptime_seconds","uptime","idletime_seconds","idletime",
  "current_user","ssh_users","sudoers",
  "cloud","deploy","test_suite",
  "packages","recipes","roles","chef_environment","chef_packages","opsworks_custom_cookbooks"
].each do |k|
  log "#{k}: #{node[k]}"
end


#
# SIMULATE AWS EC2 SERVER ENVIRONMENT DEPLOYED WITH THE OPWSORKS SSH_USER COOKBOOK
#

unless node.platform == "amazon"
  ["/home", "/home/ec2-user"].each do |aws_directory|
    directory aws_directory
  end

  node["ssh_users"].each do |id, member|
    directory "/home/#{member["name"]}"
  end
end

#
# WRITE SECRET MESSAGES
#

node["ssh_users"].each do |id, member|
  directory "/home/#{member["name"]}/inbox"
  directory "/home/#{member["name"]}/outbox"

  template "secret message" do
    path "/home/#{member["name"]}/inbox/secret_message.txt"
    source "secret_message.erb"
    variables({:member_name => member["name"]})
  end
end

#
# REMOVE ERRONEOUS MYSQL USERS
#

bash 'lock-down mysql' do
  user 'ec2-user'
  code <<-EOH
    mysql -uroot --password=#{node["mysql"]["server_root_password"]} -e "DELETE FROM mysql.user WHERE HOST <> "localhost" OR USER = "";"
  EOH
end

#
# ADD MYSQL USERS
#






#todo: how to debug interactive node convergences like binding.pry?
#breakpoint 'name' do
#  action :break
#end

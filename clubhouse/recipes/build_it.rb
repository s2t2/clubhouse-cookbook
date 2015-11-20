[
  "hostname", "fqdn", "domain", "ipaddress", "macaddress", "ip6address",
  "platform", "platform_version", "platform_family",
  "os", "os_version", "memory", "filesystem", "block_device", "cpu", "ebs",
  "uptime_seconds","uptime","idletime_seconds","idletime",
  "current_user","ssh_users","sudoers",
  "cloud","deploy","test_suite",
  "packages","recipes","roles","chef_environment","chef_packages","opsworks_custom_cookbooks",
].each do |k|
  log "#{k}: #{node[k]}"
end

#breakpoint 'name' do
#  action :break
#end

#
# SIMULATE AWS EC2 SERVER ENVIRONMENT DEPLOYED WITH THE OPWSORKS SSH_USER COOKBOOK
#

unless node.platform == "amazon"
  ["/home", "/home/ec2-user"].each do |aws_directory|
    directory aws_directory do
      action :create
    end
  end

  node["ssh_users"].each do |id, member|
    directory "/home/#{member["name"]}" do
      action :create
    end
  end
end

#
# WRITE SECRET MESSAGES
#

node["ssh_users"].each do |id, member|
  directory "/home/#{member["name"]}/inbox" do
    action :create
  end

  directory "/home/#{member["name"]}/outbox" #do
    #action :create
  #end

  template "secret message" do
    path "/home/#{member["name"]}/inbox/secret_message.txt"
    source "secret_message.erb"
    #owner "root"
    #group "root"
    variables({:member_name => member["name"]})
  end
end

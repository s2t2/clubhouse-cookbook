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


###unless node.platform == "amazon"
###
###  # SIMULATE AWS SERVER DIRECTORY STRUCTURE
###
###  ["/home", "/home/ec2-user", "/home/ec2-user/inbox"].each do |aws_directory|
###    directory aws_directory do
###      action :create
###    end
###  end
###
###  # CREATE MEMBER DIRECTORIES
###
###  MEMBERS_DIR = "/home"
###
###  node["ssh_users"].each do |member|
###    log member
###    directory "#{MEMBERS_DIR}/#{member["name"]}" do
###      action :create
###    end
###  end
###end

#
# WRITE SECRET MESSAGE
#

#template "secret message" do
#  path "/home/ec2-user/secret_message.txt"
#  source "secret_message.erb"
#  #owner "root"
#  #group "root"
#  #variables( :member_name => "mike" )
#end

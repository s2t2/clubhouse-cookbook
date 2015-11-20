[
  "packages",
  "deploy",
  "sudoers",
  "ebs",
  "test_suite",
  "opsworks_cleanup",
  "ssh_users",
  "opsworks_custom_cookbooks",
  "chef_environment",
  "os",
  "os_version",
  "hostname",
  "fqdn",
  "domain",
  "ipaddress",
  "macaddress",
  "ip6address",
  "chef_packages",
  "platform",
  "platform_version",
  "platform_family",
  "current_user",
  "cloud",
  "uptime_seconds",
  "uptime",
  "idletime_seconds",
  "idletime",
  "memory",
  "filesystem",
  "block_device",
  "cpu",
  "recipes",
  "roles"].each do |k|
  log "#{k}: #{node[k]}"
end

#breakpoint 'name' do
#  action :break
#end


unless node.platform == "amazon"

  # SIMULATE AWS SERVER DIRECTORY STRUCTURE

  ["/home", "/home/ec2-user", "/home/ec2-user/inbox"].each do |aws_directory|
    directory aws_directory do
      action :create
    end
  end

  # CREATE MEMBER DIRECTORIES

  MEMBERS_DIR = "/home"

  node["ssh_users"].each do |member|
    log member
    directory "#{MEMBERS_DIR}/#{member["name"]}" do
      action :create
    end
  end
end

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

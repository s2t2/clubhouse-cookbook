log node.keys
node.each do |k,v|
  log "#{k}: #{v}"
end

#breakpoint 'name' do
#  action :break
#end

#
# SIMULATE AWS SERVER DIRECTORY STRUCTURE
#

# unless node.platform == "ubuntu" ...
["/home", "/home/ec2-user", "/home/ec2-user/inbox"].each do |aws_directory|
  directory aws_directory do
    action :create
  end
end

#
# WRITE SECRET MESSAGE
#

template "secret message" do
  path "/home/ec2-user/secret_message.txt"
  source "secret_message.erb"
  #owner "root"
  #group "root"
  #variables( :member_name => "mike" )
end

#
# CREATE MEMBER DIRECTORIES
#

MEMBERS_DIR = "/home"

node["members"].each do |member|
  log member
  directory "#{MEMBERS_DIR}/#{member["net_id"]}" do
    action :create
  end
end

log "HELLO WORLD"
# log node.inspect
# binding.pry

#
# SIMULATE AWS SERVER DIRECTORY STRUCTURE
#

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

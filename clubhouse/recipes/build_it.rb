MY_DIR = "/home/ec2-user/inbox"

directory MY_DIR do
  action :create
end

template "secret message" do
  path "#{MY_DIR}/secret_message.txt"
  source "secret_message.erb"
  #owner "root"
  #group "root"
  #variables( :member_name => "mike" )
end

log "HELLO WORLD"

MY_DIR = "/my-example-dir"

directory MY_DIR do
  action :create
end

template "secret message" do
  path "#{MY_DIR}/secret_message.txt"
  source "secret_message.erb"
  #owner "root"
  #group "root"
  #variables( :ebs_directory_path => EBS_FILESYSTEM_DIRECTORY )
end

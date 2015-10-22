#
# DO NOT EDIT THIS FILE DIRECTLY - UNLESS YOU KNOW WHAT YOU ARE DOING
#

user node[:generator][:user] do
  action :create
  supports :manage_home => true
  home "/home/#{node[:generator][:user]}"
  shell "/bin/bash"
  not_if "getent passwd #{node[:generator]['user']}"
end

group node[:generator][:group] do
  action :modify
  members ["#{node[:generator][:user]}"]
  append true
end


private_ip = my_private_ip()
public_ip = my_public_ip()



# Pre-Experiment Code


# Configuration Files



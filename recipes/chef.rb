#
# Cookbook:: dotfiles
# Recipe:: chef
#
# Copyright:: 2018, The Authors, All Rights Reserved.

directory "#{ENV['HOME']}/.chef" do
  mode 0700
end

template "#{ENV['HOME']}/.chef/knife.rb" do
  mode 0600
end

template "#{ENV['HOME']}/.dotfiles/chef" do
  action :create_if_missing
end

#
# Cookbook:: dotfiles
# Recipe:: chef
#
# Copyright:: 2018, The Authors, All Rights Reserved.

directory "#{ENV['HOME']}/.chef" do
  mode 0700
  owner node['dotfiles']['user']
  group node['dotfiles']['group']
end

template "#{ENV['HOME']}/.chef/knife.rb" do
  mode 0600
  owner node['dotfiles']['user']
  group node['dotfiles']['group']
end

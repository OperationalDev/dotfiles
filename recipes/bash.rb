#
# Cookbook:: dotfiles
# Recipe:: bash
#
# Copyright:: 2018, The Authors, All Rights Reserved.

directory "#{ENV['HOME']}/.dotfiles" do
  mode 0700
  owner node['dotfiles']['user']
  group node['dotfiles']['group']
end

directory "#{ENV['HOME']}/.secrets" do
  mode 0700
  owner node['dotfiles']['user']
  group node['dotfiles']['group']
end

['ad','github-token','consul'].each do |secret|
  file "#{ENV['HOME']}/.secrets/#{secret}" do
    mode 0600
    owner node['dotfiles']['user']
    group node['dotfiles']['group']
  end
end

['alias','export','hashicorp','00path','proxy'].each do |temp|
  template "#{ENV['HOME']}/.dotfiles/#{temp}" do
    owner node['dotfiles']['user']
    group node['dotfiles']['group']
  end
end

template "#{ENV['HOME']}/.bash_profile" do
  source 'bash_profile.erb'
  owner node['dotfiles']['user']
  group node['dotfiles']['group']
end

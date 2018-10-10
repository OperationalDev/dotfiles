#
# Cookbook:: dotfiles
# Recipe:: bash
#
# Copyright:: 2018, The Authors, All Rights Reserved.

directory "#{ENV['HOME']}/.dotfiles"

directory "#{ENV['HOME']}/.secrets" do
  mode 0700
end

['github-token','proxy'].each do |secret|
  file "#{ENV['HOME']}/.secrets/#{secret}" do
    mode 0600
  end
end

['alias','export','path'].each do |temp|
  template "#{ENV['HOME']}/.dotfiles/#{temp}"
end

template "#{ENV['HOME']}/.bash_profile" do
  source 'bash_profile.erb'
end

#
# Cookbook Name:: chef-ghost
# Recipe:: default
#
# Copyright (C) 2014 Chris Manson
#

#install dependancies
include_recipe 'nodejs::install_from_package'

directory "/apps" do
  action :create
end

package "unzip"

remote_file '/apps/ghost.zip' do
  source 'https://ghost.org/zip/ghost-latest.zip'
  action :create_if_missing
end

execute "unzip -uo ghost.zip -d ghost" do
  cwd '/apps/'
end

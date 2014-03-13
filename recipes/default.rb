#
# Cookbook Name:: chef-ghost
# Recipe:: default
#
# Copyright (C) 2014 Chris Manson
#

#install dependancies
include_recipe 'nodejs::install_from_package'

#other internal recipes
include_recipe 'ghost::download_unzip'
include_recipe 'ghost::npm_install'

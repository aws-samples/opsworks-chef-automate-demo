#
# Cookbook Name:: apache_demo
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "apache2"

remote_directory '/var/www/html' do
  source 'teaser_page'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

web_app "web_demo" do
  server_name node['hostname']
  docroot "/var/www/html"
  notifies :restart, 'service[apache2]', :delayed
  template "web-demo.conf.erb"
end

service "apache2" do
  action :restart
end

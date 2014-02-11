#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{
  httpd
}.each do |package|
  package package do
    action :install
  end 
end

service "httpd" do
  action [ :enable, :start]
  supports :status => true,
           :restart => true,
           :reload => true
end

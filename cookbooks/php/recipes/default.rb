#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w{
  php
  php-mbstring
  php-mysql
}.each do |package|
  package package do
    action :install
  end 
end

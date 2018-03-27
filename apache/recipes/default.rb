#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2018, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
      action :install
end	
cookbook_file "/var/www/html/index.html" do
          source "index.html"
end
service "httpd" do
     action :start
end

#require 'spec_helper'

describe 'tomcat::default' do
  describe command('curl http://localhost:8080') do
   its(:stdout) { should match /Tomcat/ }
  end
describe package('java-1.7.0-openjdk-devel') do
  it { should be_installed }
  end
end

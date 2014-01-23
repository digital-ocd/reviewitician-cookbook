#
# Cookbook Name:: reviewitician
# Recipe:: ssl
#
# Copyright (C) 2014 Jeremy Ward
#
# All rights reserved - Do Not Redistribute
#

template "/etc/ssl/certs/#{node['reviewitician']['app_name']}.crt" do
  source "ssl_cert.erb"
end

template "/etc/ssl/private/server.key" do
  source "sslk.erb"
end
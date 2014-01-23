#
# Cookbook Name:: reviewitician
# Recipe:: nginx
#

include_recipe "reviewitician::ssl"

template "/etc/nginx/sites-enabled/#{node['reviewitician']['app_name']}" do
  source "nginx_conf.erb"
  variables :app_path => "#{node['ocd_rackbox']['home_dir']}/apps/#{node['reviewitician']['app_name']}"
end

file "/etc/nginx/sites-enabled/default" do
  action :delete
end
#
# Cookbook Name:: reviewitician
# Recipe:: app_setup
#

app_path = "#{node['reviewitician']['app_path']}"

directory app_path do
  owner node['ocd_rackbox']['user']
end

directory "#{app_path}/shared" do
  owner node['ocd_rackbox']['user']
end

directory "#{app_path}/shared/config" do
  owner node['ocd_rackbox']['user']
end

directory "#{app_path}/shared/tmp" do
  owner node['ocd_rackbox']['user']
end

directory "#{app_path}/shared/tmp/pids" do
  owner node['ocd_rackbox']['user']
end

template "#{app_path}/shared/config/database.yml" do
  source "database_yml.erb"
  owner node['ocd_rackbox']['user']
end

template "#{app_path}/shared/config/application.yml" do
  source "application_yml.erb"
  owner node['ocd_rackbox']['user']
end
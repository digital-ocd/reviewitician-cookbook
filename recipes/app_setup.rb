#
# Cookbook Name:: reviewitician
# Recipe:: app_setup
#

app_path = "#{node['ocd_rackbox']['home_dir']}/apps/#{node['reviewitician']['app_name']}"

directory app_path do
  owner node['ocd_rackbox']['user']
end

directory "#{app_path}/shared" do
  owner node['ocd_rackbox']['user']
end

directory "#{app_path}/shared/config" do
  owner node['ocd_rackbox']['user']
end

template "#{app_path}/shared/config/database.yml" do
  source "databse_yml.erb"
end

template "#{app_path}/shared/config/application.yml" do
  source "application_yml.erb"
end
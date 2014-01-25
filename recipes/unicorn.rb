#
# Cookbook Name:: reviewitician
# Recipe:: unicorn
#

# desc "Setup Unicorn initializer and app configuration"
# task :setup, roles: :app do
#   run "mkdir -p #{shared_path}/config"
#   template "unicorn.rb.erb", unicorn_config
#   template "unicorn_init.erb", "/tmp/unicorn_init"
#   run "chmod +x /tmp/unicorn_init"
#   run "#{sudo} mv /tmp/unicorn_init /etc/init.d/unicorn_#{application}"
#   run "#{sudo} update-rc.d -f unicorn_#{application} defaults"
# end

app_path = "#{node['ocd_rackbox']['home_dir']}/apps/#{node['reviewitician']['app_name']}"

template "#{app_path}/shared/config/unicorn.rb" do
  source "unicorn_config.erb"
  variables :app_path => "#{app_path}"
  owner node['ocd_rackbox']['user']
end

template "/etc/init.d/unicorn_#{node['reviewitician']['app_name']}" do
  source "unicorn_init.erb"
end
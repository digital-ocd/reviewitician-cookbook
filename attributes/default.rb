node.default['reviewitician']['app_name']         = 'reviewitician'
node.default['reviewitician']['app_path']         = "#{node['ocd_rackbox']['home_dir']}/apps/#{node['reviewitician']['app_name']}"
node.default['reviewitician']['environment']      = 'production'
node.default['reviewitician']['db_name']          = "#{node["reviewitician"]["app_name"]}_#{node["reviewitician"]["environment"]}"
node.default['reviewitician']['db_password']      = 'Revi3wMypAssw0rdnoW'
node.default['reviewitician']['unicorn_workers']  = 2

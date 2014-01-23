node.default['reviewitician']['app_name']     = 'reviewitician'
node.default['reviewitician']['environment']  = 'production'
node.default['reviewitician']['db_name']      = "#{node["reviewitician"]["app_name"]}_#{node["reviewitician"]["environment"]}"
node.default['reviewitician']['db_password']  = '$1$r0jdbv/X$I1boMWS9ln6X0lD9n6gtm1'

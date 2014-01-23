node.default['reviewitician'] = {
  app_name: 'reviewitician',
  environment: 'production',
  db_name: "#{node["reviewitician"]["app_name"]}_#{node["reviewitician"]["environment"]}"
  db_password: '$1$r0jdbv/X$I1boMWS9ln6X0lD9n6gtm1'
}

#
# Cookbook Name:: reviewitician
# Recipe:: database_setup
#

pg_user "#{node["reviewitician"]["app_name"]}" do
  privileges superuser: false, createdb: false, login: true
  password "#{node["reviewitician"]["db_password"]}"
end

pg_database "#{node["reviewitician"]["db_name"]}" do
  owner "#{node["reviewitician"]["app_name"]}"
  encoding "utf8"
  template "template0"
  locale "en_US.UTF8"
end


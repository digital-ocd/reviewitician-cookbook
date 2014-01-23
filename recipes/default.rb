#
# Cookbook Name:: reviewitician
# Recipe:: default
#
# Copyright (C) 2014 Jeremy Ward
#
# All rights reserved - Do Not Redistribute
#

include_recipe "ocd_rackbox"
include_recipe "reviewitician::app_setup"
include_recipe "reviewitician::database_setup"
include_recipe "reviewitician::nginx"
# include_recipe "reviewitician::unicorn"
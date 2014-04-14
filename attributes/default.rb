#
# Author:: Dwwd
# Cookbook Name:: server-prerequisites
# Attributes:: default
#

# locales to add to /var/lib/locales/supported.d/local
# GB: 'en_GB ISO-8859-1','en_GB.UTF-8 UTF-8'
default[:locales] = []
default[:username] = "apps"
default[:usergroup] = "apps"

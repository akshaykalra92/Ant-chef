# Cookbook Name:: ant
# Attributes:: default
default['ant']['install_method'] = 'package'

# Needed when installation is done using source mathod.

default['ant']['version']        = '1.9.7'
default['ant']['home']           = '/usr/local/ant'
default['ant']['url']            = 'http://archive.apache.org/dist/ant/binaries'

default['ant']['install_method'] = 'package'

default['ant']['libraries']      = { 'ant-contrib' => 'http://search.maven.org/remotecontent?filepath=ant-contrib/ant-contrib/1.0b3/ant-contrib-1.0b3.jar' }

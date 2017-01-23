name             'ant'
maintainer       'Chef Software, Inc.'
maintainer_email 'Akshay.kalra@expicient.com'
license          'Apache 2.0'
description      'Installs/Configures ant'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'
%w(debian ubuntu centos redhat fedora).each do |os|
  supports os
end
recipe 'ant::default', 'Installs and configures Ant'
issues_url 'https://github.com/akshaykalra92/Ant/issues'
source_url 'https://github.com/akshaykalra92/Ant'
depends 'ark'

# Cookbook Name:: ant
# Recipe:: install_source

include_recipe 'ark'

ant_path = ::File.join(node['ant']['home'], 'bin', 'ant')

ark 'ant' do
  not_if do
    ::File.exist?(ant_path) &&
      "#{ant_path} -version | grep '#{node['ant']['version']}'"
  end
  url "#{node['ant']['url']}/apache-ant-#{node['ant']['version']}-bin.tar.gz"
  home_dir node['ant']['home']
  version node['ant']['version']
  append_env_path true
  action :install
end

template '/etc/profile.d/ant_home.sh' do
  mode '0755'
  source 'ant_home.sh.erb'
  variables(ant_home: node['ant']['home'])
end

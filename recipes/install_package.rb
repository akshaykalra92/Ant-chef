# Cookbook Name:: ant
# Recipe:: install_package

ant_pkgs = ['ant', 'ant-contrib']

#comment

ant_pkgs.each do |pkg|
  package pkg do
    action :install
  end
end

# Cookbook Name:: ant
# Recipe:: default

include_recipe "ant::install_#{node['ant']['install_method']}"

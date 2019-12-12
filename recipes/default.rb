#
# Cookbook:: Zookeeper
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'zookeeperd'

service 'zookeeper' do
  action [ :enable, :start ]
end

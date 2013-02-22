#
# Cookbook Name:: apt-upgrade
# Recipe:: default
#
# Copyright 2013, Evrone.com
#

execute 'apt-upgrade' do
  command 'apt-mark hold grub-pc'
  command 'apt-get dist-upgrade -q -y'
  command 'apt-get upgrade -q -y'
end
#
# Cookbook Name:: basic_ubuntu_ru
# Recipe:: default
#
# Copyright 2013, Evrone.com

execute 'language-packs' do
  command 'sudo apt-get install -q -y language-pack-ru-base language-pack-ru'
end


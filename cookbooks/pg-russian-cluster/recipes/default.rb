#
# Cookbook Name:: pg-russian-cluster
# Recipe:: default
#
# Copyright 2013, Evrone.com
#

execute 'Creating Russian PG cluster' do
  environment({
    'LANG' => 'ru_RU.UTF-8',
    'LANGUAGE' => 'ru_RU.UTF-8',
    'LC_ALL' => 'ru_RU.UTF-8'
  })
  creates '/etc/postgresql/9.1/main/CREATED'
  command 'pg_dropcluster --stop 9.1 main && pg_createcluster --start 9.1 main && date > /etc/postgresql/9.1/main/CREATED'
end

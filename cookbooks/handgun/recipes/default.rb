#
# Cookbook Name:: handgun
# Recipe:: default
#
# Copyright 2013, Evrone
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "erlang"

bash "compile_handgun" do
  cwd Chef::Config[:file_cache_path]
  code <<-EOH
    cd /vagrant
    git clone git://git.undev.cc/renginejs/handgun.git && cd handgun
    make
    echo "alias handgun='`pwd`/bin/run'" >> ~/.bashrc
    source ~/.bashrc
  EOH
end
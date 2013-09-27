#
# Cookbook Name:: ossec
# Attributes:: default
#
# Copyright 2010, Opscode, Inc.
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

# general settings
default['ossec']['server_role'] = "ossec_server"
default['ossec']['checksum']    = "f8ac4a7d74068a8ca4f14e3c906bfa3a68a87fd026b463422bea79fe9d747249"
default['ossec']['version']     = "2.7"
default['ossec']['url']         = "http://www.ossec.net/files/ossec-hids-#{node['ossec']['version']}.tar.gz"
default['ossec']['logs']        = []
default['ossec']['syscheck_freq'] = 79200

# data bag configuration
default['ossec']['data_bag']['encrypted']  = false
default['ossec']['data_bag']['name']       = "ossec"
default['ossec']['data_bag']['ssh']        = "ssh"

# server-only
default['ossec']['server']['maxagents'] = 256

# used to populate config files and preload values for install
default['ossec']['user']['language'] = "en"
default['ossec']['user']['install_type'] = "local"
default['ossec']['user']['dir'] = "/var/ossec"
default['ossec']['user']['delete_dir'] = true
default['ossec']['user']['active_response'] =  true
default['ossec']['user']['syscheck'] = true
default['ossec']['user']['rootcheck'] = true
default['ossec']['user']['update'] = false
default['ossec']['user']['update_rules'] = true
default['ossec']['user']['binary_install'] = false
default['ossec']['user']['agent_server_ip'] = nil
default['ossec']['user']['enable_email'] = true
default['ossec']['user']['email'] = "ossec@example.com"
default['ossec']['user']['smtp'] = "127.0.0.1"
default['ossec']['user']['remote_syslog'] = false
default['ossec']['user']['firewall_response'] = true
default['ossec']['user']['pf'] = false
default['ossec']['user']['pf_table'] = false
default['ossec']['user']['white_list'] = []

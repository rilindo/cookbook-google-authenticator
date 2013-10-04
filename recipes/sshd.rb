#
# Cookbook Name:: google-authenticator
# Recipe:: sshd
#
# Copyright 2013, Rilindo Foster <rilindo.foster@monzell.com>
#
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##


ruby_block "edit-sshd-pamd" do
  block do
    file = Chef::Util::FileEdit.new(node['google-authenticator']['sshd_pam'])
    file.insert_line_if_no_match(
      "auth required pam_google_authenticator.so",
      "auth required pam_google_authenticator.so"
    )
    file.write_file
  end
end
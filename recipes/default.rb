#
# Cookbook Name:: google-authenticator
# Recipe:: default
#
# Copyright 2013, Rilindo Foster <rilindo.foster@monzell.com>
#
# All rights reserved - Do Not Redistribute
#


package node['google-authenticator']['package_name']

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

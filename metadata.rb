name             'google-authenticator'
maintainer       'Rilindo Foster'
maintainer_email 'rilindo.foster@monzell.com'
license          'All rights reserved'
description      'Installs/Configures google-authenticator'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.8'
{"fedora" => '17.0'}.each do |os,ver|
  supports os, ">= #{ver}"
  case os
    when 'fedora'
      depends 'yum'
    when 'ubuntu'
      depends 'apt'
  end
end
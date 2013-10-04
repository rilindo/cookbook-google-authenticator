google-authenticator Cookbook
=============================
Installs google-authenticator and updated pam to support use it. The following recipes are included:

* google-authenticator::sshd
    - configures sshd to support google-authenticator

Requirements
------------
This has been tested and locked on Fedora 19. Future support will be added for other distributions.

For testing and code contribution, use FoodCritic and ChefSpec.

Attributes
----------
* `['google-authenticator']['package_name']` - name of google package authentication package. Defaults to `google-authenticator`
* `['google-authenticator']['sshd_pamd']` - location of sshd pam module. Defaults to `/etc/pam.d/sshd`


Installation
------------

You can download directly using the knife cookbook tool. If you want to get the latest version:

1. Create a directory called `google-authenticator` in your cookbook directory
2. cd to that directory
3. clone from the repo with: `git git@github.com:rilindo/cookbook-google-authenticator.git .`

Usage
-----

To install just the package package:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[google-authenticator]",
  ]
}
```

To update sshd to support google-authenticator, in your node's `run_list`, include the sshd recipe along with opscode's openssh:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[google-authenticator]",
    "recipe[google-authenticator::sshd]":,
    "recipe[openssh]"
  ]
}
```

Then override the server attribute for openssh with:

```json
{
	"server":{
		"ChallengeResponseAuthentication":"yes"
	}
}
```

(in a future update, this may be added as an explicit attribute change)

You may also override ['google-authenticator']['sshd_pamd'] attribute if the location is different.

Note that this cookbook makes a changes on the pam file through the use of Chef::Util::FileEdit:insert_line_if_no_match(). If you are running a version of Chef client earlier than 10.16.x, this cookbook may not work.

More information on setting up Google Authenticator can be found at this URL:

http://www.mnxsolutions.com/security/two-factor-ssh-with-google-authenticator.html



Contributing
------------

To contribute:

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Rilindo Foster <rilindo.foster@monzell.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
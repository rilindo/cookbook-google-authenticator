google-authenticator Cookbook
=============================
Installs google-authenticator.

Requirements
------------
This requires the opencode-openssh, which can be found here:

https://github.com/opscode-cookbooks/openssh

This has been tested on Fedora 19. It may work on other Linux distributions.

Attributes
----------
#### google-authenticator::default
<table>
  <tr>
    <th>Key</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['google-authenticator']['package_name']</tt></td>
    <td>Google authenticator package</td>
    <td><tt>google-authenticator</tt></td>
  </tr>
  <tr>
    <td><tt>['google-authenticator']['sshd_pamd_']</tt></td>
    <td>location of sshd pam module</td>
    <td><tt>/etc/pam.d/sshd</tt></td>
  </tr>
</table>

Usage
-----


Just include `google-authenticator` in your node's `run_list`, along with opscode's openssh:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[google-authenticator]",
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

You may also override ['google-authenticator']['sshd_pamd_'] attribute if the location is different.

Note that this cookbook makes a changes on the pam file through the use of Chef::Util::FileEdit:insert_line_if_no_match(). If you are running a version of Chef client earlier than 10.16.x, this cookbook may not work.

More information on setting up Google Authenticator can be found at this URL:

http://www.mnxsolutions.com/security/two-factor-ssh-with-google-authenticator.html



Contributing
------------
If you want to contribute.

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Rilindo Foster <rilindo.foster@monzell.com>
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
Note that you will need to manual update the pam sshd module (as there is no direct equivalent of augeas in chef to modify files) by adding the following as the first line:

auth required pam_google_authenticator.so

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
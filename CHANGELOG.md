google-authenticator CHANGELOG
==============================

This file is used to list changes made in each version of the google-authenticator cookbook.

0.1.0
-----
- [Rilindo Foster] - Initial release of google-authenticator

0.1.4
-----
- [Rilindo Foster] - Added ['google-authenticator']['sshd_pamd_'] attribute, gave it ability to modify sshd module directly. 

0.1.5
-----
- [Rilindo Foster] - Cleaned up readme file.

0.1.6
-----
- [Rilindo Foster] - Added licensing info.

0.1.7
-----
- [Rilindo Foster] - Added instructions to clone directly from github.

0.1.8
-----
- [Rilindo Foster] - Added unit test and separate sshd configuration into a separate update. This allow us to write additional
                    recipes to update pam modules that can use google-authentication. In addition, we have explicited set the
                    recipe to support Fedora, with the intent to add CentOS/RHEL and eventually Ubuntu/Debian. Of note: the
                    cookbook no longer has a dependency on the opensshd cookbook.


- - -

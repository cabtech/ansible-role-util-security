# ansible-role-util-security
## Purpose
Hardening Ubuntu installations
## Comments
This roles is usable but very basic and will be added to as things progress.
## Default variables
| Name | Type | Value | Comments |
| ---- | ---- | ----- | -------- |
| security_ssh_permit_empty_passwords | string | no ||
| security_ssh_permit_root_login | string | no ||
| security_sshd_config | UnixPath | `/etc/ssh/sshd_config` ||
| security_sshd_handler_state | SystemdState| restarted ||
| security_sshd_name | string | ssh ||
| security_sshd_state | SystemdState | started ||

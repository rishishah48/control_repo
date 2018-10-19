class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDC8CDev/Kxs7pAr5XvDKQ8F16Qm0uA/lqEOBQjg2zAr3vRTlCcigaMko4+Ylm6gRmypDzKUbwH8ApFmWbw
lu+5m58lv85oUNRKbh/ycEMBMB+8wpB+uoAMTGRsfCCtqXsIq+ntBQDdlNqhC2RRucQMxUnW1WBY68h2RJ5lU/wIGc9Ywt32by6+wFj5qFGaf/3qnAxonVFWGQFsdi2auiv5dZUyNRs94kfnnyuGPHuxdWJ4w4BkHk1ctiZtRd/BPVot49p7QP3ShZbSvU7Dvrq1r6t1IgNYBJrjjz+yn3B8NvJSam2KegX4xWjEY7xtWXDM
oPBcKrjKBf99Wb5jv8CL',
	}  
}

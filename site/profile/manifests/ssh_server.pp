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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDV/SZWXy1eWU9HVB+AqFI/kKjDhbbozsWBGpUb8caM9Wb/WSJhP9SayQnmjKTYHmeoD08Uyt6yzh5Ye5EX4Oh5AUx07agpQgtFgye+nX73YYJe54h10KzPboyYdDhstTfGnMEXCoQkFahSgQDHNyUjLWeg1XdYZL6qyRFyXAs0NM7WyPTL3Xs8eCCxHL9WuJvo0DGBm7B1Awi0OBWYUoWJLvkTXZgNbnYQsQcb0tSoyc2F0JNrcAyUddXshb9MEKiix8BBDzVW16AUGTYgAeY4aKTO8vLHsZ+DoonY8LcHXn6evarOQRc+OKvIDNB9YAdKEsoTQhGBchmvgEUF1Pu',
	}  
}

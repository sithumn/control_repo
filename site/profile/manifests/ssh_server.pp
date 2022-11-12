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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDC3NiCGfgblgDkZmYT1LD4GRjcFb20W73UG+pgrH9nuF4F2ySDoSXcYZ/zmi+1QIDgHGt5ZaH/FUJyFfbR2s71a4n44nAb9CObvuXnUn3OCMsAowEddspKKXVMUZaawU9+TnEeq3z3zpq9hhBImQbAanJXpyOyKhxSI/0TMtJJySgvvAs+3R0VcCMAC4cS1VHLJutchSi963uYpYAe9uAaPAzHVY6xW28DokD8n5Zs1ukcErO2YbZqwU54q7euTd5pW5ANTLf5hbdSrSaig4XQq09jUzPbyHx7bQp+fpx01GEJSdi6bSlBLxjqt7ALuO0lrqLgYLI8NC2MVO1lcNUD',
	}  
}

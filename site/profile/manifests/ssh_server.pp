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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD37me47bUFdljaDnJXBzjOHtoA5FTqkRG1l74qDOvLh2h5pwq0y50tZ1Qw/F+RWIJKnPNlAKCk83ID3ihRRQl+crI5LvuI/AVu4p7yHVdtVWQshNamgj5arpH78naVdjDF52Q4DHc9W7RrOaLcPA7KJR083EQViQ2s1Ot9oU5aEh0qlTPtg8BzXtZDg8uolzHgRTKWFqqA44kxmakQuNwUiNc1Giee3yYERD+18qyUM/P+DLl9isPa+RwjCBP7oddBACKZzh2bb5dtpDSaY4v4RO6bUDxkSxt6xpgH7oWq3B9TnyA/AuVv+c6owyybxYEEV+3qN+R+4qnyoAnDxP3b',
	}  
}

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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDbLDvB7iQVT3/vjEwIjWLvcK0jUirmAUgCdMihmnuYZxCFtFcQCTUTpQCcYJeMatctAhEQZ4Z6NgUGCB6TIOpFQYOBBtdMNBf4kdIN1QpXdufMOsk9Mvrfn7pxNFOqnD2YizGAeD0YwliL/5qQxWKKd0jDagEE9fhEPAtzFN86y3qwKqgfqFy7n1Gv5a24nhtcmcobXPG/GUvBkZn2IdTExArIMT0VWQqxp2Yu7BmooUP8rqWt8NhXQvuBY4khkCJ6qFmoPGRbLriqMuSX4mWA/OVCi6/inDdGRGw3QHVZbw6uVQidoZkWZ/+ULGi9NK/14WbQ3YGfQTl5kN0auy8P',
	}  
}

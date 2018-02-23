class profile::base {
	class { '::ntp': }
	class { '::ufprovisioning': }

	alert("Provisioning for nginx server...")
	
	package { 'nginx':
		ensure => installed,
	}
}

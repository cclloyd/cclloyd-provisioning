class profile::base {
	class { '::ntp': }
	class { '::ufprovisioning': }

}

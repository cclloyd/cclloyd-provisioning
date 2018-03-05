class profile::base {
	class { '::ntp': }
	class { '::ufprovisioning': }
	#class { '::deluge_server': }
	#class { '::plex_Server': }
	#class { '::router': }

}

class profile::base {
	class { '::ntp': }
	
	
	class { 'ufprovisioning':
		site_name => "cclloyd.com",
		webserver_manage => true,
	}
	
	
	
	#class { '::deluge_server': }
	#class { '::plex_Server': }
	#class { '::router': }

}

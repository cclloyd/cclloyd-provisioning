class profile::base {
	class { '::ntp': }
	
	
	class { 'ufprovisioning':
		site_name => "puppetmaster.cclloyd.com",
		webserver_manage => true,
	}
	
	
	
	#class { '::deluge_server': }
	#class { '::plex_Server': }
	#class { '::router': }

}

class profile::base {
	class { '::ntp': }
	
	
	node 'cclloyd.com' {
		class { 'ufprovisioning':
			site_name => "cclloyd.com",
			webserver_manage => true,
	}
	}
	
	node 'puppetmaster.cclloyd.com {
		class { 'ufprovisioning':
			site_name => "puppetmaster.cclloyd.com",
			webserver_manage => true,
		}
	}
	
	#class { 'ufprovisioning':
	#	site_name => "puppetmaster.cclloyd.com",
	#	webserver_manage => true,
	#}
	
	
	
	#class { '::deluge_server': }
	#class { '::plex_Server': }
	#class { '::router': }

}

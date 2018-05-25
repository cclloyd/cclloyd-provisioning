class profile::base {
	class { '::ntp': }
	
	
	node 'cclloyd.com' {
		class { 'ufprovisioning':
			site_name => "cclloyd.com",
			webserver_manage => true,
		}
		
		
		class 	{ 'ufprovisioning::michael': }
		class 	{ 'ufprovisioning::plex': }
		class 	{ 'ufprovisioning::git': }
		class 	{ 'ufprovisioning::cclloyd': }
		class	{ 'ufprovisioning::reactstack': }

	}

	node 'opensrd.cclloyd.com' {
		class { 'ufprovisioning':
			site_name => "opensrd.cclloyd.com",
			webserver_manage => true,
			sprinkle_name	=>	'websrd',
		}
		
		class { 'ufprovisioning::michael': }
		class	{ 'ufprovisioning::filehost': }
		#class { 'ufprovisioning::bittorrent': }
		#class { 'ufprovisioning::plex': }
		#class { 'ufprovisioning::git': }
		#class { 'ufprovisioning::grafana': }
		#class { 'ufprovisioning::cclloyd': }
		#class { 'ufprovisioning::userfrosting': }
		#class { 'ufprovisioning::django': }
		#class { '::router': }
	}
	
	
}

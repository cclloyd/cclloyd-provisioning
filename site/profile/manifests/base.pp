class profile::base {
	class { '::ntp': }
	
	
	node 'cclloyd.com' {
		class { 'ufprovisioning':
			site_name => "cclloyd.com",
			webserver_manage => true,
		}
		
		
		class 	{ 'ufprovisioning::michael': }
		class 	{ 'ufprovisioning::bittorrent': }
		class 	{ 'ufprovisioning::plex': }
		class 	{ 'ufprovisioning::git': }
		#class	{ 'ufprovisioning::grafana': }
		class 	{ 'ufprovisioning::cclloyd': }
		#class	{ 'ufprovisioning::userfrosting': }
		class	{ 'ufprovisioning::cloud9': }
		
	}
	
	node 'puppetmaster.cclloyd.com' {
		class { 'ufprovisioning':
			site_name => "puppetmaster.cclloyd.com",
			webserver_manage => true,
		}
		
		class { 'ufprovisioning::michael': }
		#class { 'ufprovisioning::bittorrent': }
		#class { 'ufprovisioning::plex': }
		class { 'ufprovisioning::git': }
		#class { 'ufprovisioning::grafana': }
		class { 'ufprovisioning::cclloyd': }
		class { 'ufprovisioning::userfrosting': }
		#class { '::router': }
	}
	
	
}

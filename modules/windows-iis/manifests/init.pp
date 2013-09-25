class windows-iis{
		#include windows-iis::firewall
	#	include windows-iis::files

	
			dism {'IIS-WebServerRole': 
			   ensure => present,
			   notify => Dism['IIS-WebServer'],
		}
	      
			dism {'IIS-WebServer': 
			   ensure => present,
			   require => Dism['IIS-WebServerRole'],
			   notify => Dism['IIS-Security'],
		}
	
		dism {	'IIS-CommonHttpFeatures': 
		    ensure => present,
		    require => Dism['IIS-WebServer', 
		                    'IIS-WebServerRole']
		}
	
			dism {'IIS-StaticContent': 
			   ensure => present,
			   require => Dism['IIS-CommonHttpFeatures', 
			                   'IIS-WebServer', 
			                   'IIS-WebServerRole'],
		}
		
	
			dism {'IIS-DefaultDocument': 
			   ensure => present,
		}
 	
			dism {'IIS-DirectoryBrowsing': 
			   ensure => present,
		}	
	 	
			dism {'IIS-HttpErrors': 
			   ensure => present,
		}
				
			dism {'IIS-HttpRedirect': 
			   ensure => present,
			   require => Dism['IIS-CommonHttpFeatures', 
			   'IIS-WebServer', 
			   'IIS-WebServerRole'],
		}
		dism {'IIS-ApplicationDevelopment': 
			   ensure => present,
			   require => Dism['IIS-WebServer', 'IIS-WebServerRole'],
		}	
    dism {'IIS-ASPNET': 
			   ensure => present,
			   require => Dism['IIS-ApplicationDevelopment', 
			   'IIS-WebServer', 
			   'IIS-WebServerRole', 
			   'IIS-DefaultDocument', 
          'IIS-CommonHttpFeatures', 
          'IIS-ISAPIFilter', 
          'IIS-ISAPIExtensions', 
          'IIS-NetFxExtensibility', 
          'IIS-RequestFiltering', 
          'IIS-Security'],
		}	
		dism {'IIS-NetFxExtensibility': 
			   ensure => present,
			   require => Dism['IIS-ApplicationDevelopment', 
			                   'IIS-WebServer', 
			                   'IIS-WebServerRole', 
			                   'IIS-RequestFiltering', 
			                   'IIS-Security'],
		}
    dism {
			'IIS-ASP': 
			   ensure => present,
		}		
		
		dism {'IIS-WebDAV':
      ensure => present,
      require => Dism['IIS-WebServerRole'],
    }

# Not needed for WSpace
#                dism {
#			'IIS-CGI': 
#			   ensure => present,
#			   require => Dism['IIS-ApplicationDevelopment', 
#			                   'IIS-WebServer', 
#			                   'IIS-WebServerRole'],
#		}	
                dism {		
			'IIS-ISAPIExtensions': 
			   ensure => present,
		}
                dism {	
			'IIS-ISAPIFilter': 
			   ensure => present,
                }
		dism {'IIS-ServerSideIncludes': 
		    ensure => present,
		    require => Dism['IIS-ApplicationDevelopment', 
		    'IIS-WebServer', 
		    'IIS-WebServerRole'],
		}	
                dism {
			'IIS-HealthAndDiagnostics': ensure => present,
		}
    dism {'IIS-HttpLogging': 
             ensure => present,
             require => Dism['IIS-HealthAndDiagnostics', 
             'IIS-WebServer', 
             'IIS-WebServerRole'],
		}
                dism {
			'IIS-LoggingLibraries': ensure => present,
		}			
		dism {
			'IIS-RequestMonitor': ensure => present,
		}
                dism {		
			'IIS-HttpTracing': ensure => present,	
		}
                dism {		
			'IIS-CustomLogging': ensure => present,
		}
    dism {'IIS-ODBCLogging': 
          ensure => present,
          require => Dism['IIS-HealthAndDiagnostics', 
                          'IIS-WebServer', 
                          'IIS-WebServerRole'],
		}		
                dism {
			'IIS-Security': 
			     ensure => present,
			     require => Dism['IIS-WebServer'],
			     notify => Dism['IIS-ClientCertificateMappingAuthentication'],
			
		}
       dism {'IIS-BasicAuthentication': 
            ensure => present,	
		}
              
			dism { 'IIS-WindowsAuthentication': 
			     ensure => present,
			     require => Dism['IIS-Security'],
		}
   #             dism {
#			'IIS-DigestAuthentication': ensure => present,
#		}
    dism {'IIS-ClientCertificateMappingAuthentication': 
        ensure => present,
        require => Dism['IIS-WebServerRole'],
                        
		}
                dism {
			'IIS-IISCertificateMappingAuthentication': ensure => present,
		}
                dism {
			'IIS-URLAuthorization': ensure => present,
		}
                dism {
			'IIS-RequestFiltering': ensure => present,
                }
		dism {
			'IIS-IPSecurity': ensure => present,
                }
		dism {'IIS-Performance': 
		    ensure => present,
		    require => Dism['IIS-WebServer', 'IIS-WebServerRole'],
                }
		dism {'IIS-HttpCompressionStatic': 
		            ensure => present,
		            require => Dism['IIS-Performance', 
		                            'IIS-WebServer', 
		                            'IIS-WebServerRole'],
		}        
 	        dism {'IIS-HttpCompressionDynamic': 
 	              ensure => present,
 	              require => Dism['IIS-Performance', 
 	                             'IIS-WebServer', 
 	                             'IIS-WebServerRole'],
                }
		dism {
			'IIS-WebServerManagementTools': ensure => present,
                }
		dism {
			'IIS-ManagementConsole': ensure => present,
                }
		dism {
			'IIS-ManagementScriptingTools': ensure => present,
		}                
		dism {
			'IIS-ManagementService': ensure => present,
		}
    dism {'IIS-IIS6ManagementCompatibility':
        ensure => present,
        require => Dism['IIS-WebServerManagementTools', 
        'IIS-WebServerRole'],
		}
    dism {'IIS-Metabase': 
          ensure => present,
          require => Dism['IIS-IIS6ManagementCompatibility', 
          'IIS-WebServerManagementTools', 
          'IIS-WebServerRole'],
		}
    dism {'IIS-WMICompatibility': 
          ensure => present,
          require => Dism['IIS-IIS6ManagementCompatibility', 
          'IIS-WebServerManagementTools', 
          'IIS-WebServerRole'],
		}
    dism {'IIS-LegacyScripts': 
          ensure => present,
          require => Dism['IIS-IIS6ManagementCompatibility', 
          'IIS-WebServerManagementTools', 
          'IIS-WebServerRole', 
          'IIS-Metabase', 
          'IIS-WMICompatibility'],
		}
                dism {
			'IIS-LegacySnapIn': 
			       ensure => present,
			       require => Dism['IIS-IIS6ManagementCompatibility', 
			                       'IIS-Metabase'],
		}
                dism {
			'WAS-WindowsActivationService': ensure => present,
		}
    dism {'WAS-ProcessModel': 
          ensure => present,
          require => Dism['WAS-WindowsActivationService'],
		}
    dism {'WAS-NetFxEnvironment': 
          ensure => present,
          require => Dism['WAS-WindowsActivationService'],
		}        	
	  dism {'WAS-ConfigurationAPI': 
	         ensure => present,	
	         require => Dism['WAS-WindowsActivationService'],
                }

		#.NET Setup Bits
		dism {
                        'NetFx3': ensure => present,
                }
                
    # FTP Roles            
    dism {'IIS-FTPServer':
      ensure => present,
      require => Dism[ 'IIS-WebServerRole'],
    }
    dism {'IIS-FTPSvc':
      ensure => present,
      require => Dism['IIS-FTPServer']
    }
    dism {'IIS-FTPExtensibility':
      ensure => present,
      require => Dism['IIS-FTPServer',
                      'IIS-FTPSvc'],
    }
    
    
}



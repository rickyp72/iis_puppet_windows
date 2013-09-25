node devnode inherits basenode {
  $environment = 'dev'
   include windows-iis::filesrepo
   
   
#  Puppet::Client ["$location"] {
#    environment  => $environment
#    }
    
        
   
}
node uatnode inherits basenode {
  $environment = 'uat'
   include windows-iis::filesrepo
   
   
#  Puppet::Client ["$location"] {
#    environment  => $environment
#    }
    
  
}
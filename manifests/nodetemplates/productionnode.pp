node productionnode inherits basenode {
  $environment = 'production'
   include windows-iis::filesrepo
   
#  Puppet::Client ["$location"] {
#    environment  => $environment
#    }
}
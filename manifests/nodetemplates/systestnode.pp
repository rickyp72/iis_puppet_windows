node systestnode inherits basenode {
  $environment = 'systest'
  include windows-iis::files
  
#  Puppet::Client ["$location"] {
#    environment  => $environment
#    }
  
}
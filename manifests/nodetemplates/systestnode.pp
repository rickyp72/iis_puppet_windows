node systestnode inherits basenode {
  $environment = 'systest'
  
  Puppet::Client ["$location"] {
    environment  => $environment
    }
  
}
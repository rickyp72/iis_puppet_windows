node productionnode inherits basenode {
  $environment = 'production'
  
  Puppet::Client ["$location"] {
    environment  => $environment
    }
}
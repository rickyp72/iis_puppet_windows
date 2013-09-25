node uatnode inherits basenode {
  $environment = 'uat'
  
  Puppet::Client ["$location"] {
    environment  => $environment
    }
  
}
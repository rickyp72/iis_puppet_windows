class aspnetmvc4::service {
  service {"aspnet_state":
    ensure => running,
    enable => true,
    path => "C:/Windows/Microsoft.NET/Framework64/v4.0.30319/aspnet_state.exe",
    require => Class["aspnetmvc4::install"],
    
  }
}
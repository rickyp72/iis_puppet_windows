class aspnetmvc4::install {
#      file { 'C:/windows/temp/AspNetMVC4Setup.exe':
#    source => 'puppet:///modules/aspnetmvc4/AspNetMVC4Setup.exe',
#    owner => 'administrator',
#    group => 'administrators',
#    mode => 0770,
#    notify => Exec["ASPNETMVC4"],
#  }
  
 # this will fail in dev as it is getting package from repo
 # setup mapping to  
    exec { "ASPNETMVC4":
    command => "O:/IIS_Packages/AspNetMVC4Setup.exe /q",
    refreshonly => true,
    #require => File["C:/windows/temp/AspNetMVC4Setup.exe"],
    notify => Class["aspnetmvc4::service"],
  }
}
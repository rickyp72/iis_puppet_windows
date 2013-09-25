class windows-iis::files {
	file { 'C:/windows/temp/dotnet35.exe':
		source => 'puppet:///modules/windows-iis/dotnet35.exe',
		owner => 'administrator',
		group => 'administrators',
		mode => 0770,
		notify => Exec["DotNet35Inst"],
	}
	
	 file { 'C:/windows/temp/dotnet40.exe':
    source => 'puppet:///modules/windows-iis/dotnet40.exe',
    owner => 'administrator',
    group => 'administrators',
    mode => 0770,
    notify => Exec["DotNet40Inst"],
  }
  
    file { 'C:/windows/temp/dotnet45.exe':
    source => 'puppet:///modules/windows-iis/dotnet45.exe',
    owner => 'administrator',
    group => 'administrators',
    mode => 0770,
    notify => Exec["DotNet45Inst"],
  }


  
	exec { "DotNet35Inst":
		command => "C:/windows/temp/dotnet35.exe /q",
		refreshonly => true,
		require => File["C:/windows/temp/dotnet35.exe"],
	}
	
	  exec { "DotNet40Inst":
    command => "C:/windows/temp/dotnet40.exe /q",
    refreshonly => true,
    require => File["C:/windows/temp/dotnet40.exe"],
  }
  
    exec { "DotNet45Inst":
    command => "C:/windows/temp/dotnet45.exe /q",
    refreshonly => true,
    require => File["C:/windows/temp/dotnet45.exe"],
  }
}



class windows-iis::filesrepo {
  
    exec { "DotNet35Inst":
    command => "O:/IIS_Packages/dotnet35.exe /q",
    refreshonly => true,

  }
  
    exec { "DotNet40Inst":
    command => "O:/IIS_Packages/dotnet40.exe /q",
    refreshonly => true,
    
  }
  
    exec { "DotNet45Inst":
    command => "O:/IIS_Packages/dotnet45.exe /q",
    refreshonly => true,
   
  }
  
}
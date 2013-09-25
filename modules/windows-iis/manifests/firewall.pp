class windows-iis::firewall {
        exec { 'iis-clear':
        command => 'C:\Windows\System32\netsh.exe advfirewall firewall add rule name="IIS Secure Socket Layer :: Puppet Created" dir=in action=allow protocol=TCP localport=80',
	refreshonly => true
	}

        exec { 'iis-secure':
                command => 'C:\Windows\System32\netsh.exe advfirewall firewall add rule name="IIS Secure Socket Layer :: Puppet Created" dir=in action=allow protocol=TCP localport=443',
		refreshonly => true,
        }

	exec { 'iis-wcf-services':
                command => 'C:\Windows\System32\netsh.exe advfirewall firewall add rule name="IIS WCF :: Puppet Created" dir=in action=allow protocol=TCP localport=81',
                refreshonly => true,
        }
}


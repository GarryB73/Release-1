# Configure Firewall to allow ICMP traffic




# Configure WinRM to allow unsecure connection

Set-Item -Path WSMan:\localhost\Service\AllowUnencrypted -Value true
Set-Item -Path WSMan:\localhost\Service\Auth\Basic -Value true

# Set instance & credentials to login into SQL Server
$Server = "TESTSQL001"
$Domain = "Test"
$Credential = "sa"
$Database = "SharePoint"

# Install SqlServer Module
Install-Module -Name SqlServer -AllowClobber

# Add SysAdmin group to SQL Users
Add-SqlLogin -ServerInstance $Server -Credential $Credential -LoginName $Domain"\SysAdmin" -LoginType "WindowsGroup" -DefaultDatabase $Database

# Add SecurityAdmin group to SQL Users
Add-SqlLogin -ServerInstance $Server -Credential $Credential -LoginName $Domain"\SecurityAdmin" -LoginType "WindowsGroup" -DefaultDatabase $Database

# Add DB_Creator group to SQL Users
Add-SqlLogin -ServerInstance $Server -Credential $Credential -LoginName $Domain"\DB_Creator" -LoginType "WindowsGroup" -DefaultDatabase $Database

# Assign Permissions to SysAdmin

# Assign Permissions to SecurityAdmin

# Assign Permissions to DB_Creator

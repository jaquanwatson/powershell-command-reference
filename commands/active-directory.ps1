# List all users in a specific OU
Get-ADUser -Filter * -SearchBase "OU=Users,DC=domain,DC=com"

# Reset user password
Set-ADAccountPassword -Identity jdoe -Reset -NewPassword (ConvertTo-SecureString "NewP@ssw0rd" -AsPlainText -Force)

# Disable a user account
Disable-ADAccount -Identity jdoe

# Find inactive users (e.g., 90 days)
Search-ADAccount -AccountInactive -UsersOnly -TimeSpan 90.00:00:00

---
title: Active Directory Commands
layout: default
---

# Active Directory PowerShell Commands

## List All Users in OU
```powershell
Get-ADUser -Filter * -SearchBase "OU=Users,DC=domain,DC=com"
```

## Reset User Password
```powershell
Set-ADAccountPassword -Identity jdoe -Reset -NewPassword (ConvertTo-SecureString "NewP@ssw0rd" -AsPlainText -Force)
```

## Disable User Account
```powershell
Disable-ADAccount -Identity jdoe
```

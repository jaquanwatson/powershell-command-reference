# PowerShell Command Reference Library

![PowerShell](https://img.shields.io/badge/PowerShell-5.1%2B-blue)
![Commands](https://img.shields.io/badge/Commands-100%2B-green)
![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)

> A curated PowerShell command library for IT professionals - 100+ ready-to-use commands for AD, Azure, security, and automation tasks

## Overview

This repository provides a comprehensive collection of PowerShell commands and scripts organized by category for IT professionals, system administrators, and cloud engineers. Each command includes detailed explanations, usage examples, and best practices.

## Categories

<table>
  <tr>
    <td><b>Active Directory</b></td>
    <td>User management, group policies, domain operations, security groups</td>
  </tr>
  <tr>
    <td><b>Azure & Microsoft 365</b></td>
    <td>Resource management, tenant administration, Exchange Online, SharePoint</td>
  </tr>
  <tr>
    <td><b>File System & Storage</b></td>
    <td>File operations, disk management, permissions, backup/restore</td>
  </tr>
  <tr>
    <td><b>Networking</b></td>
    <td>DNS, DHCP, firewall configuration, connectivity testing</td>
  </tr>
  <tr>
    <td><b>Security & Compliance</b></td>
    <td>Auditing, permissions, encryption, compliance reporting</td>
  </tr>
  <tr>
    <td><b>Automation</b></td>
    <td>Scheduled tasks, workflows, event triggers, reporting</td>
  </tr>
</table>

## How to Use This Repository

### Command Files Structure

Each category has its own `.ps1` file containing related commands:

```
commands/
├── active-directory.ps1
├── azure-m365.ps1
├── file-system.ps1
├── networking.ps1
├── security.ps1
└── automation.ps1
```

### Documentation Structure

Comprehensive documentation is available in the `docs/` folder:

```
docs/
├── active-directory.md
├── azure.md
├── file-system.md
├── networking.md
├── security.md
└── automation.md
```

### Usage Examples

Each command includes:
- Purpose and description
- Required parameters
- Example usage
- Expected output
- Common use cases

Example from `active-directory.ps1`:

```powershell
# Get all disabled user accounts in Active Directory
# Usage: Lists all disabled user accounts with their last logon time
function Get-DisabledADUsers {
    Get-ADUser -Filter {Enabled -eq $false} -Properties LastLogonDate, DisplayName |
    Select-Object DisplayName, SamAccountName, LastLogonDate |
    Sort-Object LastLogonDate
}

# Example output:
# DisplayName    SamAccountName    LastLogonDate
# -----------    -------------    -------------
# John Smith     jsmith          2023-05-15 10:30:45
# Jane Doe       jdoe            2023-06-22 14:15:30
```

## Quick Reference

### Most Popular Commands

<details>
<summary><b>Active Directory Commands</b></summary>

```powershell
# Get all locked out accounts
Search-ADAccount -LockedOut | Select-Object Name, SamAccountName

# Reset user password
Set-ADAccountPassword -Identity "username" -Reset -NewPassword (ConvertTo-SecureString -AsPlainText "NewPassword" -Force)

# Get inactive users (90+ days)
$date = (Get-Date).AddDays(-90)
Get-ADUser -Filter {LastLogonTimeStamp -lt $date -and Enabled -eq $true} -Properties LastLogonTimeStamp |
Select-Object Name, @{Name="LastLogon"; Expression={[DateTime]::FromFileTime($_.lastLogonTimestamp)}}
```
</details>

<details>
<summary><b>Azure & Microsoft 365 Commands</b></summary>

```powershell
# Connect to Microsoft 365
Connect-MsolService

# Get all licensed users
Get-MsolUser -All | Where-Object {$_.isLicensed -eq $true} | Select-Object DisplayName, UserPrincipalName, Licenses

# Get Azure AD sign-in logs
Get-AzureADAuditSignInLogs -Top 10 | Select-Object UserPrincipalName, AppDisplayName, Status, CreatedDateTime
```
</details>

<details>
<summary><b>Security Commands</b></summary>

```powershell
# Get failed login attempts
Get-EventLog -LogName Security -InstanceId 4625 -Newest 10

# Check file permissions
Get-Acl -Path "C:\path\to\file.txt" | Format-List

# Export security audit
Get-WinEvent -FilterHashtable @{LogName='Security'; ID=4624,4625,4634} -MaxEvents 100 | 
Export-Csv -Path "C:\security_audit.csv" -NoTypeInformation
```
</details>

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-commands`)
3. Add your commands with proper documentation
4. Commit your changes (`git commit -m 'Add networking commands'`)
5. Push to the branch (`git push origin feature/new-commands`)
6. Open a Pull Request

### Contribution Guidelines

- Include detailed comments for each command
- Provide practical examples
- Test all commands before submitting
- Follow PowerShell best practices
- Group related commands together

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

**Jaquan Watson**
- GitHub: [@jaquanwatson](https://github.com/jaquanwatson)
- LinkedIn: [jaquanwatson](https://linkedin.com/in/jaquanwatson)
- Email: jqwatson96@gmail.com

---

<div align="center">

⭐ **Found this useful? Star this repository!** ⭐

</div>
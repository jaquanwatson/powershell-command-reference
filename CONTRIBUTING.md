# Contributing to PowerShell Command Reference

Thank you for your interest in contributing to the PowerShell Command Reference library! This document provides guidelines and instructions for contributing to this project.

## Code of Conduct

By participating in this project, you agree to abide by our Code of Conduct. Please be respectful and considerate of others.

## How to Contribute

### Reporting Issues

1. Check if the issue has already been reported by searching the [Issues](https://github.com/jaquanwatson/powershell-command-reference/issues).
2. If the issue hasn't been reported, [open a new issue](https://github.com/jaquanwatson/powershell-command-reference/issues/new/choose) using the Bug Report template.
3. Provide a clear title and description, along with steps to reproduce the issue.
4. Include any relevant error messages or unexpected output.

### Suggesting New Commands

1. Check if the command has already been suggested by searching the [Issues](https://github.com/jaquanwatson/powershell-command-reference/issues).
2. If the command hasn't been suggested, [open a new issue](https://github.com/jaquanwatson/powershell-command-reference/issues/new/choose) using the Feature Request template.
3. Provide a clear title and description of the command.
4. Include example usage and expected output.

### Pull Requests

1. Fork the repository.
2. Create a new branch from `main` for your changes.
3. Make your changes, following the coding standards and guidelines.
4. Test your commands thoroughly.
5. Update documentation if necessary.
6. Submit a pull request to the `main` branch.

## Command Structure

Each command in this repository should follow this structure:

```powershell
<#
.SYNOPSIS
Brief description of what the command does.

.DESCRIPTION
Detailed description of the command's functionality.

.PARAMETER ParameterName
Description of the parameter.

.EXAMPLE
Get-SomeCommand -Parameter Value
Description of what this example does.

.NOTES
Additional information about the command.

.LINK
Related links or documentation.
#>
function Get-SomeCommand {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, HelpMessage = "Help message for parameter")]
        [string]$ParameterName
    )
    
    # Command implementation
    # ...
    
    # Return results
}
```

## Command Categories

When adding new commands, place them in the appropriate category file:

- `active-directory.ps1`: Commands for Active Directory management
- `azure-m365.ps1`: Commands for Azure and Microsoft 365
- `file-system.ps1`: Commands for file and storage operations
- `networking.ps1`: Commands for networking tasks
- `security.ps1`: Commands for security and compliance
- `automation.ps1`: Commands for automation tasks

If your command doesn't fit into an existing category, please suggest a new category in your pull request.

## PowerShell Best Practices

- Use approved PowerShell verbs (use `Get-Verb` to see the list).
- Follow consistent naming conventions (Pascal case for functions and parameters).
- Include proper error handling.
- Use comment-based help for all functions.
- Keep functions focused on a single responsibility.
- Use pipeline support where appropriate.
- Follow the principle of least privilege.
- Include examples for all commands.

## Testing

- Test all commands in a real PowerShell environment.
- Verify that commands work in both Windows PowerShell 5.1 and PowerShell 7+.
- Test with different parameter combinations.
- Ensure error handling works as expected.

## Documentation

- Include comment-based help for all commands.
- Provide clear examples of how to use each command.
- Document any prerequisites or dependencies.
- Update the README.md if adding a new category or significant functionality.

## Review Process

1. All pull requests will be reviewed by the maintainers.
2. Feedback may be provided for necessary changes.
3. Once approved, the pull request will be merged.

Thank you for contributing to the PowerShell Command Reference library!
# Azure Resource Inventory Script

This PowerShell script fetches all resource details inside specified Azure Resource Groups
and exports them into a CSV file.

## Requirements
- PowerShell 7+
- Az PowerShell module
- Azure account access

## Execution
1. Install Az module:
   Install-Module -Name Az -Scope CurrentUser

2. Login:
   Connect-AzAccount

3. Run script:
   ./GetAzResources.ps1
# AzureRoleExport
RG Role Assigment Export on Subscription

First of all
You must connect AZAccount
**Prerequisites**

Run the following command from PowerShell to determine your PowerShell version:

## Usage
2. Start PowerShell as Admin
```
> $PSVersionTable.PSVersion
> Get-Module -Name AzureRM -ListAvailable
> Get-ExecutionPolicy -List
> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
## Installation
```
> Install-Module -Name Az -Repository PSGallery -Force
> Update-Module -Name Az -Force
```
## Sign In
```
> Connect-AzAccount
```
## Troubleshooting
For solutions to common installation issues with the Az PowerShell module, see Troubleshoot installation problems with the Azure Az PowerShell module.

## Lastly change the Subscription name and run exportRGroles.ps1
Good luck

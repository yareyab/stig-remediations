<#
.SYNOPSIS
    This PowerShell script ensures that Windows 11 is configured to audit Object Access - Other Object Access Events successes.

.NOTES
    Author          : Eray Bay
    LinkedIn        : linkedin.com/in/eraybay/
    GitHub          : github.com/yareyab/
    Date Created    : 2026-09-12
    Last Modified   : 2026-09-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000083
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-AU-000083/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    PS C:\> .\WN11-AU-000083.ps1
#>

AuditPol /set /subcategory:"Other Object Access Events" /success:enable

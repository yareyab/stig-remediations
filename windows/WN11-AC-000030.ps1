<#
.SYNOPSIS
    This PowerShell script ensures that the minimum password age is configured to at least 1 day.

.NOTES
    Author          : Eray Bay
    LinkedIn        : linkedin.com/in/eraybay/
    GitHub          : github.com/yareyab/
    Date Created    : 2026-09-12
    Last Modified   : 2026-09-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AC-000030
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-AC-000030/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    PS C:\> .\WN11-AC-000030.ps1
#>

NET ACCOUNTS /MINPWAGE:1

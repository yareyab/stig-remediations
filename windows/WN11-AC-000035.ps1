<#
.SYNOPSIS
    This PowerShell script ensures that passwords are, at a minimum, 14 characters.

.NOTES
    Author          : Eray Bay
    LinkedIn        : linkedin.com/in/eraybay/
    GitHub          : github.com/yareyab/
    Date Created    : 2026-09-12
    Last Modified   : 2026-09-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AC-000035
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-AC-000035/

.TESTED ON
    Date(s) Tested  : 2026-09-12
    Tested By       : Eray Bay
    Systems Tested  : Microsoft Windows 11 Pro 10.0.26200
    PowerShell Ver. : 5.1.26100.9444

.USAGE
    PS C:\> .\WN11-AC-000035.ps1
#>

NET ACCOUNTS /MINPWLEN:14

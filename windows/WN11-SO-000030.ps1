<#
.SYNOPSIS
    This PowerShell script ensures that audit policies using subcategories are enabled.

.NOTES
    Author          : Eray Bay
    LinkedIn        : linkedin.com/in/eraybay/
    GitHub          : github.com/yareyab/
    Date Created    : 2026-09-12
    Last Modified   : 2026-09-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000030
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-SO-000030/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    PS C:\> .\WN11-SO-000030.ps1
#>

New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\ -Name SCENoApplyLegacyAuditPolicy -Type DWord -Value 0x1 -Force

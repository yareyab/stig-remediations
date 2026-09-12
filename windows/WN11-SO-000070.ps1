<#
.SYNOPSIS
    This PowerShell script ensures that the machine inactivity limit is set to 15 minutes.

.NOTES
    Author          : Eray Bay
    LinkedIn        : linkedin.com/in/eraybay/
    GitHub          : github.com/yareyab/
    Date Created    : 2026-09-12
    Last Modified   : 2026-09-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000070
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-SO-000070/

.TESTED ON
    Date(s) Tested  : 2026-09-12
    Tested By       : Eray Bay
    Systems Tested  : Microsoft Windows 11 Pro 10.0.26200
    PowerShell Ver. : 5.1.26100.9444

.USAGE
    PS C:\> .\WN11-SO-000070.ps1
#>

New-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\ -Name InactivityTimeoutSecs -Type DWord -Value 0x00000384 -Force

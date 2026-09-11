<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Eray Bay
    LinkedIn        : linkedin.com/in/eraybay/
    GitHub          : github.com/yareyab/
    Date Created    : 2026-09-11
    Last Modified   : 2026-09-11
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000500
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-AU-000500/

.TESTED ON
    Date(s) Tested  : 2026-09-11
    Tested By       : Eray Bay
    Systems Tested  : Microsoft Windows 11 Pro 10.0.26200
    PowerShell Ver. : 5.1.26100.9444

.USAGE
    PS C:\> .\WN11-AU-000500.ps1
#>

New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application -Force | New-ItemProperty -Name MaxSize -Type DWord -Value 0x00008000 -Force

<#
.SYNOPSIS
    This PowerShell script ensures that Kerberos encryption types are configured to prevent the use of DES and RC4 encryption suites.

.NOTES
    Author          : Eray Bay
    LinkedIn        : linkedin.com/in/eraybay/
    GitHub          : github.com/yareyab/
    Date Created    : 2026-09-12
    Last Modified   : 2026-09-12
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000190
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-SO-000190/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    PS C:\> .\WN11-SO-000190.ps1
#>

New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters\ -Force | New-ItemProperty -Name SupportedEncryptionTypes -Type DWord -Value 0x7ffffff8 -Force

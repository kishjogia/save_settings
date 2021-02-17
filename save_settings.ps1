# Save settings

$sys_user = $env:UserName
$setting_path = 'C:\Users\' + $sys_user + '\OneDrive\development\save_settings\backup\'

if (!(Test-Path -Path $setting_path))
{
    # Create a backup directory if it doesn't exist
    New-Item -Path $setting_path -ItemType Directory
}

# Windows Termainal settings
$win_term_path = 'C:\Users\' + $sys_user + '\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json'
$win_term_file = $setting_path + 'Windows_Terminal_settings.json'

Copy-Item -Path $win_term_path -Destination $win_term_file

# PowerShell settings
$ps_path = 'C:\Users\' + $sys_user + '\OneDrive\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1'

Copy-Item -Path $ps_path -Destination $setting_path
# Powershell profile
set-ExecutionPolicy unrestricted
$Shell = $Host.UI.RawUI
$monitor = Get-WmiObject -Class Win32_DesktopMonitor
$size = $Shell.BufferSize
$size.width=$monitor.ScreenWidth
$size.height=$monitor.ScreenHeight
$Shell.BufferSize = $size
$size = $Shell.WindowSize
$size.height=94
$size.width=80
$Shell.WindowSize = $size
$shell.BackgroundColor = "Black"
$shell.ForegroundColor = "White"
set-location c:\

# Program Aliases
new-item alias:np -value C:\Windows\System32\notepad.exe

# Clear powershell window for a clean workspace on launch

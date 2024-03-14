if (Test-Path -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{6BBAE539-2232-434A-A4E5-9A33560C6283}") {
    $UninstallPath = Get-ItemPropertyValue -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{6BBAE539-2232-434A-A4E5-9A33560C6283}" -Name "UninstallString"

    & $UninstallPath --force_stop --silent

    if($LASTEXITCODE -eq 0) {
        Write-host -Green "Drive for Desktop removal succeeded!"
    } else {
        Write-host -Red "Drive for Desktop removal failed!"
    }
} else {
    Write-host -f Green "Drive for Desktop is not installed"
}
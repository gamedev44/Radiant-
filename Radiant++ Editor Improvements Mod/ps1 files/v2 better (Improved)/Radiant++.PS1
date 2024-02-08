# PowerShell Script for Batch Automation Fixes By Asterisk for use with Bo3 Radiant map editor.

function Show-Menu {
    Clear-Host
    Write-Host "`______            _ _                             "
    Write-Host "(_____ \          | (_)            _     _     _   "
    Write-Host " _____) ) ____  _ | |_  ____ ____ | |_ _| |_ _| |_ "
    Write-Host "(_____ ( / _  |/ || | |/ _  |  _ \|  _|_   _|_   _)"
    Write-Host "      | ( ( | ( (_| | ( ( | | | | | |__ |_|   |_|  "
    Write-Host "      |_|\_||_|\____|_|\_||_|_| |_|\___)           "
    Write-Host "Batch Automation Fixes By: Asterisk"
    Write-Host "`Please choose an option:"
    Write-Host "1. Run T7 Patch"
    Write-Host "2. Move VK Radiant 2024 Files"
    Write-Host "3. Fix Zone Map Files"
    Write-Host "4. Exit"
    $option = Read-Host "Enter your choice (1-4)"
    return $option
}

function Run-T7Patch {
    Start-Process -FilePath "B03 Radiant Fix Files\t7\t7patch_2.02.exe" -Wait
}

function Move-VKRadiantFiles {
    $bo3Path = "C:\Program Files (x86)\Steam\steamapps\common\Call of Duty Black Ops III"
    if (-not (Test-Path $bo3Path)) {
        $bo3Path = Read-Host "Enter the path to your Call of Duty Black Ops III folder"
    }
    Copy-Item -Path "B03 Radiant Fix Files\vkRadiant (Standard)\*" -Destination $bo3Path -Recurse -Force
}

function Fix-ZoneMapFiles {
    [System.Reflection.Assembly]::LoadWithPartialName('System.windows.forms') | Out-Null

    $openFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $openFileDialog.InitialDirectory = [Environment]::GetFolderPath('Desktop')
    $openFileDialog.Filter = 'Zone Files (*.fast;*.zone)|*.fast;*.zone'
    $openFileDialog.Multiselect = $true
    $result = $openFileDialog.ShowDialog()

    if ($result -eq 'OK') {
        $files = $openFileDialog.FileNames
        foreach ($file in $files) {
            Start-Process -FilePath "B03 Radiant Fix Files\ZoneFix.exe" -ArgumentList $file -Wait
        }
    }
}

while ($true) {
    $option = Show-Menu
    switch ($option) {
        '1' { Run-T7Patch }
        '2' { Move-VKRadiantFiles }
        '3' { Fix-ZoneMapFiles }
        '4' { break }
        default { Write-Host "Invalid choice, please try again." }
    }
}

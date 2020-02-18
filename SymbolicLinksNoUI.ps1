<#

Creates Symbolic links for 
Desktop
Documents
Music
Videos
Firefox
Chrome
Ie 
Adobe signatures
Outlook signatures
and syncs these directories with all content to the specified onedrive directory.

#>



$profile = "C:\Users\"
$username = ""
$onedrive = "$profile\OneDrive - \$username"
$newPath = "C:\Users\$username\$directory"

Write-Host Testing Variables 
Write-Host newPath  = $newPath
Write-Host onedrive = $onedrive
Write-Host Username = $username
Write-Host profile = $profile
Write-Host Completed Testing Variables


if(!(Test-Path [$newPath]) -and !(Test-Path [$onedrive\Desktop))
{
    New-Item -ItemType Junction -Path "$onedrive\Desktop" -Target "$profile\Desktop"
    Created Symbolic Link for Desktop Directory
}

if(!(Test-Path [$newPath]) -and !(Test-Path [$onedrive\Documents))
{
    New-Item -ItemType Junction -Path "$onedrive\Documents" -Target "$profile\Documents"
    Created Symbolic Link for Desktop Documents
}

if(!(Test-Path [$newPath]) -and !(Test-Path [$onedrive\Music))
{
    New-Item -ItemType Junction -Path "$onedrive\Music" -Target "$profile\Music"
    Created Symbolic Link for Desktop Music
}

if(!(Test-Path [$newPath]) -and !(Test-Path [$onedrive\Pictures))
{
    New-Item -ItemType Junction -Path "$onedrive\Pictures" -Target "$profile\Pictures"
    Created Symbolic Link for Desktop Pictures
}


if(!(Test-Path [$newPath]) -and !(Test-Path [$onedrive\Videos))
{
    New-Item -ItemType Junction -Path "$onedrive\Videos" -Target "$profile\Videos"
    Created Symbolic Link for Desktop Videos
}

if(!(Test-Path [$newPath]) -and !(Test-Path [$onedrive\Videos))
{
    New-Item -ItemType Junction -Path "$onedrive\FireFoxBookmarks" -Target "$profile\AppData\Roaming\Mozilla\Firefox\Profiles"
    Created Symbolic Link for Desktop Videos
}


if(!(Test-Path [$newPath]) -and !(Test-Path [$onedrive\ChromeBookmarks))
{
    New-Item -ItemType Junction -Path "$onedrive\ChromeBookmarks" -Target "$profile\AppData\Local\Google\Chrome\User Data\Default"
    Created Symbolic Link for Desktop Videos
}


if(!(Test-Path [$newPath]) -and !(Test-Path [$onedrive\Favorites))
{
    New-Item -ItemType Junction -Path "$onedrive\Favorites" -Target "$profile\Favorites"
    Created Symbolic Link for Desktop Videos
}


if(!(Test-Path [$newPath]) -and !(Test-Path [$onedrive\QuickParts))
{
    New-Item -ItemType Junction -Path "$onedrive\QuickParts" -Target "$profile\application data\microsoft\templates"
    Created Symbolic Link for Desktop Videos
}


if(!(Test-Path [$newPath]) -and !(Test-Path [$onedrive\AdobeSignature))
{
    New-Item -ItemType Junction -Path "$onedrive\AdobeSignature" -Target "$profile\AppData\Roaming\Adobe\Acrobat\DC\Security"
    Created Symbolic Link for Desktop Videos
}


if(!(Test-Path [$newPath]) -and !(Test-Path [$onedrive\OutlookSignatures))
{
    New-Item -ItemType Junction -Path "$onedrive\OutlookSignatures" -Target "$profile\application data\microsoft\signatures"
    Created Symbolic Link for Desktop Videos
}






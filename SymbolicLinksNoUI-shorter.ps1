<#
By Alan Newingham
Date: 2/2020
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

$username = ""
$onedrive = "C:\Users\$username\OneDrive - \$username"
$profilePath = "C:\Users\$username"

$array = @("Desktop","Documents","Downloads","Videos","Music","\application data\microsoft\signatures","\AppData\Roaming\Adobe\Acrobat\DC\Security","\application data\microsoft\templates","Favorites","\AppData\Local\Google\Chrome\User Data\Default","\AppData\Roaming\Mozilla\Firefox\Profiles")
for ($i=0; $i -lt $array.length; $i++) {

$everything = $array[$i]

if(!(Test-Path [$profilePath]) -and !(Test-Path [$onedrive\$everything))
{
    Write-Host $everything
    New-Item -ItemType Junction -Path "$onedrive\$everything" -Target "$profilePath\$everything"
    Write-Host Created Symbolic Link for $everything Directory
}

}

$url = "https://drive.google.com/uc?id=1Ggne7jaiygH7dLT_hCP3eRFII_JkgOV0&export=download"


$output = "$PSScriptRoot\acentera-hugo.exe"

if (!(Test-Path $output)) {
  Write-Warning "Will start to download Serverless CMS based on Hugo"
  try {
    $start_time = Get-Date
    
    Import-Module BitsTransfer
    Start-BitsTransfer -Source $url -Destination $output
  } Catch {
  }
  
  try {
    if (!(Test-Path $output)) {
      $start_time = Get-Date
  
      $wc = New-Object System.Net.WebClient
      $wc.DownloadFile($url, $output)
    }
  } Catch {
  }
  
  try {
    if (!(Test-Path $output)) {
      $start_time = Get-Date
      
      Invoke-WebRequest -Uri $url -OutFile $output
    }
  } Catch {
  }
}

if (!(Test-Path $output)) {
   Write-Host "Could not download file." -ForegroundColor Magenta
} else {
   Write-Host "Successfully downloaded file." -ForegroundColor Magenta
   $job = Start-Job {
     Start-Process "http://127.0.0.1:8081/"
   }
   & $output serve --bind 0.0.0.0 --forceSyncStatic --destination public --enableApi=true
}

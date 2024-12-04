$webhookUrl = 'https://discord.com/api/webhooks/1312716594543329310/AESsDL5qvv4f0SIzKBjnUbZtDC-nyv5k4yuMfZIJsbtOLAJGo08MIV-j_PMD1hhjT5SL'
$payload = @{
    content = 'Hello'
} | ConvertTo-Json
Invoke-RestMethod -Uri $webhookUrl -Method Post -ContentType 'application/json' -Body $payload

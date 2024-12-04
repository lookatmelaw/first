# Set the Discord webhook URL
$webhookUrl = 'https://discord.com/api/webhooks/1312716594543329310/AESsDL5qvv4f0SIzKBjnUbZtDC-nyv5k4yuMfZIJsbtOLAJGo08MIV-j_PMD1hhjT5SL'

# Set the payload with the message you want to send
$payload = @{
    content = 'Hello'
} | ConvertTo-Json

# Send the POST request to the webhook URL
Invoke-RestMethod -Uri $webhookUrl -Method Post -ContentType 'application/json' -Body $payload

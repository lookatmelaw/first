$webhookUrl = 'https://discord.com/api/webhooks/1312716612754997278/KqR7pD93OinOKDpA7gIFEXeZLNEZv_3OB-RGhLlyh0eJs3fuuZ30b-jOyVxMr6G5jmGx'
$payload = @{
    content = 'found'
} | ConvertTo-Json
Invoke-RestMethod -Uri $webhookUrl -Method Post -ContentType 'application/json' -Body $payload

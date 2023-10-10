<?php 


$mobile = '243810015922';
$sender = 'Smartech';
$message = urlencode('Test Message');


//Submit to server
$api_url = "https://api2.dream-digital.info/api/SendSMS?api_id=API21745164837&api_password=u9Ea1tgDiX&sms_type=T&encoding=T&sender_id=".$sender."&phonenumber=".$mobile."&textmessage=".$message."";
//Submit to server


$response = file_get_contents($api_url);
echo $response; ?>
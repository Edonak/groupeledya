<?php 
$mobile = '243818086804';
$sender = 'DIGITIZE';
$message = urlencode('Test Blanchard àçaçéà');

//Submit to server

$api_url = "https://api2.dream-digital.info/api/SendSMS?api_id=XXXXXXXXXXXXX&api_password=xxxxxxxxxxxxxx&sms_type=T&encoding=T&sender_id=".$sender."&phonenumber=".$mobile."&textmessage=".$message."";

//Submit to server

$response = file_get_contents( $api_url);
 ?>
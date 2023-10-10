<!DOCTYPE html>
<html>
<head>
	<title>Qr</title>
</head>
<body>
    <?php
      include("libs/phpqrcode/qrlib.php");
    ?>
    <form method="POST" action="index.php">
    	 <input type="text" name="textqr">
	     <input type="submit" name="valu">
    </form>
	 <?php
       if (isset($_POST['valu'])) {
       	  $data=$_POST['textqr'];

       	  $tempDir = 'temp/';
	      $filename = $data;
	      $body =  $data; 
	       QRcode::png($body, $tempDir.''.$filename.'.png', QR_ECLEVEL_L, 5);
       }
	 ?>

</body>
</html>
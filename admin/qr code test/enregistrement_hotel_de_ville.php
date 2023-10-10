<?php 	


if (isset($_POST['enregistrement'])) {

$numdoc = mt_rand(0,23001);
	$nom = $_POST['nom'];
	$postnom = $_POST['postnom'];

	     include("Qr code/libs/phpqrcode/qrlib.php");
        $tempDir = 'Qr code/temp/';
        $filename = $nom.$numdoc;
        $body = $postnom;
         QRcode::png($body, $tempDir.''.$filename.'.png', QR_ECLEVEL_L, 5);
        $lienqr= $tempDir.$filename.'.png';

        echo $tempDir;


}


 ?>
<table style=" vertical-align: top; border-collapse: collapse; " id="tab-fac">
    
    <tr>
      <td style="width: 20%;"></td>
      <td style="width: 80%;"><a href="index.php"><img src="<?php echo $lienqr; ?>"></a></td>
    </tr>



  </table><br><br>
 
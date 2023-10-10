 <?php include'db/connectbdd.php';?>
<?php 

include('config/appconnect.php');

if (isset($_GET['num'])) {
$id = $_GET['num'];


{ ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>IMPRESSION</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        /* heading */

h1 { font: bold 100% sans-serif; letter-spacing: 0.5em; text-align: center; text-transform: uppercase; }

/* table */

table { font-size: 75%; table-layout: fixed; width: 100%; }
table { border-collapse: separate; border-spacing: 2px; }
th, td { border-width: 1px; padding: 0.5em; position: relative; text-align: left; }
th, td { border-radius: 0.25em; border-style: solid; }
th { background: #EEE; border-color: #BBB; }
td { border-color: #DDD; }

body { box-sizing: border-box; height: 11in; margin: 0 auto; overflow: hidden; padding: 0.5in; width: 7.5in; }
body { background: #FFF; border-radius: 1px; box-shadow: 0 0 1in -0.25in rgba(0, 0, 0, 0.5); }

/* header */

header { margin: 0 0 3em; }
header:after { clear: both; content: ""; display: table; }

header h1 { background: #e40101; border-radius: 0.25em; color: #FFF; margin: 0 0 1em; padding: 0.5em 0; }
header address { float: left; font-size: 95%; font-style: normal; line-height: 1.25; margin: 0 1em 1em 0; }
article address.norm h4 {
	font-size: 125%;
	font-weight: bold;
}
article address.norm { float: left; font-size: 95%; font-style: normal; font-weight: normal; line-height: 1.25; margin: 0 1em 1em 0; }
header address p { margin: 0 0 0.25em; }
header span, header img { display: block; float: right; }
header span { margin: 0 0 1em 1em; max-height: 25%; max-width: 60%; position: relative; }
header img { max-height: 100%; max-width: 100%; }
header input { cursor: pointer; -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)"; height: 100%; left: 0; opacity: 0; position: absolute; top: 0; width: 100%; }

/* article */

article, article address, table.meta, table.inventory { margin: 0 0 3em; }
article:after { clear: both; content: ""; display: table; }
article h1 { clip: rect(0 0 0 0); position: absolute; }

article address { float: left; font-size: 125%; font-weight: bold; }

/* table meta & balance */

table.meta, table.balance { float: right; width: 36%; }
table.meta:after, table.balance:after { clear: both; content: ""; display: table; }

/* table meta */

table.meta th { width: 40%; }
table.meta td { width: 60%; }

/* table items */

table.inventory { clear: both; width: 100%; }
table.inventory th:first-child {
	width:50px;
}
table.inventory th:nth-child(2) {
	width:300px;
}
table.inventory th { font-weight: bold; text-align: center; }

table.inventory td:nth-child(1) { width: 26%; }
table.inventory td:nth-child(2) { width: 38%; }
table.inventory td:nth-child(3) { text-align: right; width: 12%; }
table.inventory td:nth-child(4) { text-align: right; width: 12%; }
table.inventory td:nth-child(5) { text-align: right; width: 12%; }

/* table balance */

table.balance th, table.balance td { width: 50%; }
table.balance td { text-align: right; }

/* aside */

aside h1 { border: none; border-width: 0 0 1px; margin: 0 0 1em; }
aside h1 { border-color: #999; border-bottom-style: solid; }

table.sign {
	float: left;
	width: 220px;
}
table.sign img {
	width: 100%;
}
table.sign tr td {
	border-color: transparent;
}
@media print {
	* { -webkit-print-color-adjust: exact; }
	html { background: none; padding: 0; }
	body { box-shadow: none; margin: 0; }
	span:empty { display: none; }
	.add, .cut { display: none; }
}

@page { margin: 0; }
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</head>
<body>
		<header>
			<h1>Facture/Authentique</h1>
			

<?php 
$sql = mysqli_query($connection,"SELECT *FROM caisse_produis WHERE code_facture='$id'");
while ($garde = mysqli_fetch_assoc($sql)) { ?>

<?php  $code_facture=$garde['code_facture']; ?>
<?php  $qrcode=$garde['qrcode']; ?>
<?php $nom=$garde['nom']; ?>

<?php $age=$garde['age']; ?>
<?php $tel=$garde['tel']; ?>
<?php $sexe=$garde['sexe']; ?>
<?php $client=$garde['client']; ?>

		 <?php }

 ?>	



			<address >
				<img src="<?php echo $qrcode; ?>" style=" width: 20%;">
				
				<p><img src="icones/WhatsApp Image 2023-05-30 at 20.25.24.jpeg" style="border-radius: 100%; width: 20%; margin-right: 350px;"></p>
			

				
				<p><strong> <?php echo $nom; ?> </strong></p>
				<p><strong> Client:<?php echo $nom; ?> </strong></p>
				<p><strong> Age:<?php echo $age; ?> </strong></p>
				<p><strong> sexe:<?php echo $sexe; ?> </strong></p>
				<p><strong> telephone:<?php echo $tel; ?> </strong></p>

				
				
				
				
			</address>
		
			
		</header>
		<article>


<?php 
$sql = mysqli_query($connection,"SELECT *FROM caisse_produis WHERE code_facture='$id'");
while ($garde = mysqli_fetch_assoc($sql)) { ?>

<?php  $code_facture=$garde['code_facture']; ?>
<?php $qrcode=$garde['qrcode']; ?>

		 <?php }

 ?>	
			<table class="meta">
				<tr>
					<th><span >Code Facture N°</span></th>
					<td><span ><?php echo $code_facture; ?></span></td>
				</tr>
				<tr>
					<th><span >Date édition</span></th>
					<td><span ><?php echo date('Y-m-d'); ?></span></td>
				</tr>
			</table>
			<table >
				<thead>
					<tr>
											
														
				
				<th > Libellé</th>
				<th>Prix</th>
				
				<th>Quantité</th>
				<th>Total</th>
			
				
			
				</tr>
				</thead>




<tbody>

<?php 
$sql = mysqli_query($connection,"SELECT *FROM caisse_produis WHERE code_facture='$id'");
while ($garde = mysqli_fetch_assoc($sql)) { ?>




									<tr style="height: 60%;" class="blue">
										
		
		
	
		
<td ><?php echo $garde['libelle']; ?></td>

<td><?php echo $usds=$garde['pu_usd']; ?>FC </td>
<td><?php echo $qte =$garde['qte_cart']; ?></td>
<td><?php echo $qte =$garde['total']; ?>FC</td>


	


</tr>
 <?php }

 ?>

				</tbody>



				
			</table>
			<table class="sign">
				
			</table>

			<table class="balance">
				<tr>
					<th><span >Montant total</span></th>
					<td><span>
 <?php 

$sql = mysqli_query($connection,"SELECT sum(total) as  usd FROM caisse_produis WHERE code_facture='$id'");
while ($garde = mysqli_fetch_assoc($sql)) { ?>
	


 <?php
$usddd=$garde['usd'];
 echo number_format($usddd,2); ?>$


 
	 <?php }

 ?>

</span><span data-prefix></span></td>
				</tr>






<tr>
					<th><span >Réduction</span></th>
					<td><span>
 <?php 

$sql = mysqli_query($connection,"SELECT * FROM caisse_produis WHERE code_facture='$id' group by code_facture");
while ($garde = mysqli_fetch_assoc($sql)) { ?>
	


 <?php
?>


 
	 <?php }

 ?>

</span><span data-prefix></span></td>
				</tr>

<tr>
					<th><span >Montant dû:</span></th>
					<td><span>


 <?php 

$sql = mysqli_query($connection,"SELECT sum(total_generale) as  usqd FROM caisse_produis WHERE code_facture='$id'");
while ($garde = mysqli_fetch_assoc($sql)) { ?>
	


 <?php
$usdddzz=$garde['usqd'];
 echo number_format($usdddzz,2); ?>$


 
	 <?php }

 ?>

</span><span data-prefix></span></td>
				</tr>
				<tr>
					<th><span >Nous disons :</span></th>
					<td><span>
 <?php
require_once ('sylladev.php'); 


$nuts = new nuts($usdddzz, 'USD');
echo $nuts->convert('fr-FR');

 ?>
	

</span><span data-prefix></span></td>
				</tr>





	<tr>
					<th><span >CDF:</span></th>
					<td><span>
 <?php 
$sql = mysqli_query($connection,"SELECT *FROM taux LIMIT 1");
while ($garde = mysqli_fetch_assoc($sql)) {

 $taux=$garde['taux']; 

$total=$usdddzz*$taux;

		}

		echo $total;

 ?>	
FC
</span><span data-prefix></span></td>
				</tr>




			</table>
		</article>
		<aside>
			
			  <?php 
    $requete2 = mysqli_query($connection,"SELECT *FROM caisse_produis where code_facture='$id'  group BY code_facture ORDER BY id DESC ");
                                     while ($garde = mysqli_fetch_assoc($requete2)) {  ?>
			<div >
				<p>Agent:<?php echo $garde['username'] ?></p>
			</div>
			<?php }

 ?>








 	


		</aside>
		
<script type="text/javascript">

</script>
</body>
</html>

	
	
<?php }
}

 ?>
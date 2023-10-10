 <?php include'db/connectbdd.php';?>
<?php 

include('config/appconnect.php');

if (isset($_GET['num'])) {
$id = $_GET['num'];


$sql = mysqli_query($connection,"SELECT *FROM caisses WHERE code_facture='$id'");
while ($garde = mysqli_fetch_assoc($sql)) { ?>


	<?php  $codess=$garde['code_facture']; ?>

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
			<h1>RELEVER DES PAIEMENTS</h1>
			





			<address >
				<p>Hôtel SAINT PIERRE CLAVER</p>
				<p> ace.hotellerie@jejuits.net </p>
				<p> +243 081 83 39 560</p>
				
				<p> GOMBE Kinshasa RDC </p>
			</address>
			<span>
			<a href="dashboard.php"><img src="logo/malebo.png" style="border-radius: 100%; width: 20%;"></span></a>
		</header>
		<article>
			<h1>Recipient</h1>

<?php 

$sql = mysqli_query($connection,"SELECT *FROM caisses WHERE code_facture='$id'");
while ($garde = mysqli_fetch_assoc($sql)) { ?>


	<?php  $codess=$garde['code_facture']; ?>

<?php }
 ?>

<?php 

$sqls = mysqli_query($connection,"SELECT *FROM salle WHERE code_facture='$codess'");
while ($gardes = mysqli_fetch_assoc($sqls)){?>

<address class="norm">
				<h4>Client: <?php echo $gardes['client']; ?></h4>
				
				<p> Salle: <?php echo $gardes['nominnation']; ?><br>
				<p> Phone: <?php echo $gardes['telephone']; ?></p>

			
			</address>
			
<?php }

 ?>

			
			<table class="meta">
				
				<tr>
					<th><span >Date édition</span></th>
					<td><span ><?php echo $d=date('Y-m-d'); ?></span></td>
				</tr>
			</table>
			<table class="inventory">
				<thead>
					<tr><th><span >Date de paiement</span></th>
						<th><span >Mode de paiement</span></th>
						<th><span >Total a payer</span></th>
						<th><span >Montant déja payer</span></th>
						
						<th><span >Percepteurs</span></th>
						
					</tr>
				</thead>




<tbody>
	<?php 

$sql = mysqli_query($connection,"SELECT *FROM caisses WHERE code_facture='$id'");
while ($garde = mysqli_fetch_assoc($sql)) { ?>

<?php  $montant=$garde['montant']; ?>


	<?php 
if ($montant==0) { ?>
    


<?php }else { ?>
    
 <tr>
						<td><span ><?php echo $garde['date_operation']; ?></span></td>

						<td><span ><?php echo $garde['mode_paiement']; ?></span></td>
						<td><span ><?php echo $k=$garde['tot_a_payer']; ?>$</span></td>
						<td><span ><?php echo $s=$garde['montant']; ?>$</span></td>


						<td><span ><?php echo $p=$garde['percepteur']; ?></span></td>
						
						
					
					</tr>


<?php }


 ?>

					

					<?php }
 ?>
				</tbody>



				
			</table>
			

		
		</article>
		
		
<script type="text/javascript">

</script>
</body>
</html>

	
	
<?php }
}

 ?>
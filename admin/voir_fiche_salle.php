 <?php include'db/connectbdd.php';?>
<?php 

include('config/appconnect.php');

if (isset($_GET['id'])) {
$id = $_GET['id'];


$sql = mysqli_query($connection,"SELECT *FROM salle WHERE id='$id'");
while ($garde = mysqli_fetch_assoc($sql)) { ?>

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
			<h1>Fiche du client</h1>
			





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
			<address class="norm">
				<h4>Client: <?php echo $garde['client']; ?></h4>
				<h4>Piece d'identité : <?php echo $garde['type_carte'].' N°: '.$garde['num_carte'] ?></h4>
				<p> Phone: <?php echo $garde['telephone']; ?><br>
				<p> Nom de la salle: <?php echo $garde['nominnation']; ?><br>
				<p> Type evenement: <?php echo $garde['type_evenement']; ?></p>
				<p> Date evenement: <?php echo $garde['date_event']; ?></p>

				
				
				
			
			</address>
			
			<table class="meta">
				<tr>
					<th><span >Fiche N°</span></th>
					<td><span ><?php echo $garde['code_facture']; ?></span></td>
				</tr>
				<tr>
					<th><span >Date édition</span></th>
					<td><span ><?php echo $d=date('Y-m-d'); ?></span></td>
				</tr>
			</table>
			<table class="inventory">
				<thead>
					<tr>
						<th><span >Code</span></th>
						<th><span >Nom de la salle</span></th>
						
						<th><span >Prix </span></th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><span ><?php echo $garde['id']; ?></span></td>
						<td><span >Occupation de la chambre N°:<?php echo $chambres=$garde['nominnation']; ?></span></td>
						
						<td><span ><?php echo $garde['prix']; ?></span><span data-prefix>$</span></td>
						
					
					</tr>
				</tbody>
			</table>
			<table class="sign">
				<tr>
					<td>
	<a href="dashboard.php"><img src="logo/malebo.png " style="border-radius: 100%; width: 70%;"></a></td>
				</tr>
			</table>

			<table class="balance">
				<tr>
					<th><span >Total à payer</span></th>
					<td><span><?php echo $garde['prix']; ?></span><span data-prefix>$</span></td>
				</tr>
			</table>
		</article>
		<aside>
			<h1><span >Informations additionnelles</span></h1>
			<div >
				<p>Percepeteur:<?php echo $garde['percepteur']; ?></p>
			</div>
		</aside>
		<?php 


$sqsql=mysqli_query($connection,"UPDATE chambres set etat=1 where numero_chambres='$chambres'");
		 ?>

<script type="text/javascript">

</script>
</body>
</html>

	
	
<?php }
}

 ?>
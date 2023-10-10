 <?php include'db/connectbdd.php';?>
<?php 

include('config/appconnect.php');

if (isset($_POST['enregistre'])) {
extract($_POST);


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
			<h1>ORDONANCE MEDICAL</h1>	
		</header>
		<article>

<p> <img src="icones/WhatsApp Image 2023-05-30 at 20.25.24.jpeg" style="width: 20%; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<?php 
$sql = mysqli_query($connection,"SELECT *FROM ordonances WHERE code_facture='$id' limit 1");
while ($garde = mysqli_fetch_assoc($sql)) { ?>
 <img src="<?php echo $qrcode=$garde['qrcode']; ?>" style="width: 20%; "> 

<?php }

 ?>	
		
 <br> Service medical en clinique<strong><br> Soins médicaux à domicile</strong></p>






		 <table class="meta">
				
				<tr>
					<th><span >Préscription médical</span></th>
					<td><span ></span></td>
				</tr>
			</table>
			<table >
				<thead>
					<?php 
$sql = mysqli_query($connection,"SELECT *FROM ordonances WHERE code_facture='$id'");
while ($garde = mysqli_fetch_assoc($sql)) { ?>	
					<tr>
											
													
				
				<th > <?php echo $garde['nom_produits'] ?></th>
				<th><?php echo $garde['type_produits'] ?></th>
				<th><?php echo $garde['posologie'] ?></th>
				
				<th><?php echo $garde['qte_cart'] ?></th>
			
				
			
				</tr>
				<?php }

 ?>
				</thead>




<tbody>






									
 

				</tbody>



				
			</table>
			<table class="sign">
				<tr>
					<td>
				</tr>
			</table>

			<table class="balance">
				<tr>
					 <?php 
    $requete2 = mysqli_query($connection,"SELECT *FROM ordonances where code_facture='$id' group BY code_facture ORDER BY id DESC ");
                                     while ($garde = mysqli_fetch_assoc($requete2)) {  ?>
					<th><span >Docteur:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $garde['username'] ?></span></th>
					


				</tr>

				   	<?php }

 ?>
			</table>
		</article>
		<aside>
			<h1></h1>
			<h5 style="color: green;">SMED : BIEN VOUS SOIGNER EST NOTRE DEVOIR 24/24 – 7J/7 </h5>
			<p> <strong>Avenue tombalbaye, commune de la Gombe (Réf : Croisement Avenue tombalbaye & Avenue de l’Hôpital général) 
RDV en clinique/pour le domicile : +243 84 70 180 88 – le médécin(Dr luc)et urgences(WhatsApp aussi) :+243 81 393 7072 </strong> </p>

			
<strong><hr>code ordonance: <?php echo $id; ?> </strong> 

			
		</aside>
		
<script type="text/javascript">

</script>
</body>
</html>

	
	
<?php }
}

 ?>
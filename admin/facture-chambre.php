<?php 
include('config/appconnect.php');

if (isset($_POST['enregistrer'])) {
extract($_POST);
$date_reservation = date('Y/m/d');
$date_paayement = date('Y/m/d');
$mois_paiement = date('m');
$annee_paiement = date('Y');
$reste = $montant - $montant_paye;
$date1 = $date_entree;
$date2 = $date_sortie;
$date1 = strtotime($date1);
$date2 = strtotime($date2);
$nbJoursTimestamp = $date2 - $date1;
$nombrejr = $nbJoursTimestamp/86400;
$query1 = mysqli_query($connect,"
INSERT INTO paiement_chambre(nom_client, chambre, montant, date_paayement, date_reservation, date_entree, date_sortie, nombrejr, montant_paye, reste, mois_paiement, annee_paiement)
   VALUES('$nom_client','$chambre','$montant','$date_paayement', '$date_reservation', '$date_entree', '$date_sortie','$nombrejr','$montant_paye', '$reste', '$mois_paiement', '$annee_paiement')");
$sql1 = mysqli_query($connect,"UPDATE malebo_chambres SET etat = 1 WHERE numero_chambres='$chambre'");
$sql1 = mysqli_query($connect,"UPDATE malebo_chambres SET etat = 1 WHERE numero_chambres='$chambre'");

$sql1 = mysqli_query($connect,"UPDATE malebo_reservation SET etat = 1 WHERE chambre_client='$chambre'");


$auteur = "gedeon";
if($auteur){ ?>
<?php 
$sql = mysqli_query($connect,"SELECT *FROM paiement_chambre ORDER BY id DESC");
while ($garde = mysqli_fetch_assoc($sql)) { ?>

	<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Facture</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .text-danger strong {
    		color: #9f181c;
		}
		.receipt-main {
			background: #ffffff none repeat scroll 0 0;
			border-bottom: 12px solid #333333;
			border-top: 12px solid #9f181c;
			margin-top: 50px;
			margin-bottom: 50px;
			padding: 40px 30px !important;
			position: relative;
			box-shadow: 0 1px 21px #acacac;
			color: #333333;
			font-family: open sans;
		}
		.receipt-main p {
			color: #333333;
			font-family: open sans;
			line-height: 1.42857;
		}
		.receipt-footer h1 {
			font-size: 15px;
			font-weight: 400 !important;
			margin: 0 !important;
		}
		.receipt-main::after {
			background: #414143 none repeat scroll 0 0;
			content: "";
			height: 5px;
			left: 0;
			position: absolute;
			right: 0;
			top: -13px;
		}
		.receipt-main thead {
			background: #414143 none repeat scroll 0 0;
		}
		.receipt-main thead th {
			color:#fff;
		}
		.receipt-right h5 {
			font-size: 16px;
			font-weight: bold;
			margin: 0 0 7px 0;
		}
		.receipt-right p {
			font-size: 12px;
			margin: 0px;
		}
		.receipt-right p i {
			text-align: center;
			width: 18px;
		}
		.receipt-main td {
			padding: 9px 20px !important;
		}
		.receipt-main th {
			padding: 13px 20px !important;
		}
		.receipt-main td {
			font-size: 13px;
			font-weight: initial !important;
		}
		.receipt-main td p:last-child {
			margin: 0;
			padding: 0;
		}	
		.receipt-main td h2 {
			font-size: 20px;
			font-weight: 900;
			margin: 0;
			text-transform: uppercase;
		}
		.receipt-header-mid .receipt-left h1 {
			font-weight: 100;
			margin: 34px 0 0;
			text-align: right;
			text-transform: uppercase;
		}
		.receipt-header-mid {
			margin: 24px 0;
			overflow: hidden;
		}
		
		#container {
			background-color: #dcdcdc;
		}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</head>
<body>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
	<div class="row">
		
        <div class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
    			<div class="receipt-header">
					<div class="col-xs-6 col-sm-6 col-md-6">
						<div class="receipt-left">
		<a href="dashboard.php"><img src="logo/malebo.png"></a>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 text-right">
						<div class="receipt-right">
							<h5>Hôtel New Malebo</h5>
							<p>+243) 081 15 38 133 <i class="fa fa-phone"></i></p>
							<p>info@hotelmalebo.com<i class="fa fa-envelope-o"></i></p>
							<p>Kintambo Kinshasa RDC <i class="fa fa-location-arrow"></i></p>
						</div>
					</div>
				</div>
            </div>
			
			<div class="row">
				<div class="receipt-header receipt-header-mid">
					<div class="col-xs-8 col-sm-8 col-md-8 text-left">
						<div class="receipt-right">
		<h5>Client<small>:| <?php echo $garde['nom_client'];  ?></small></h5>
		<p><b>Entrée :</b><?php echo $garde['date_entree'];  ?></p>
		<p><b>Sortie :</b><?php echo $garde['date_sortie'];  ?></p>
		<p><b>Nombre jour :</b> <?php echo $nombrejr; ?></p>
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="receipt-left">
							<h2>Facture N° <?php echo $garde['id'];  ?></h2>
						</div>
					</div>
				</div>
            </div>
			
            <div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Description</th>
                            <th>Nbr Jr</th>
                            <th>Prix</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-md-9">
                    N° Chambre <?php echo $garde['chambre'].' '.$garde['categorie_chambre'];  ?></td>
                            <td class="col-md-3"><i class="fa fa-inr"></i><?php 
                            echo $nombrejr;  ?></td>

                            <td class="col-md-3"><i class="fa fa-inr"></i><?php

                            echo number_format($garde['montant'],2).'$';  ?></td>
                        </tr>
                        <tr >
                            <td class="text-right" colspan="2">
                            <p>
                                <strong>THT: </strong>
                            </p>
                            <p>
                                <strong>TTC: </strong>
                            </p>
							</td>
                            <td>
                            <p>
                                <strong><i class="fa fa-inr"></i> <?php

                            $tot = $garde['montant']*$nombrejr;
                            echo number_format($tot,2).'$';  ?></strong>
                            </p>
                            <p>
                                <strong><i class="fa fa-inr"></i><?php

                            $tot = $garde['montant']*$nombrejr;
                            echo number_format($tot,2).'$';  ?></strong>
                            </p>
							</td>

                        </tr>
                        <tr>
                           
                            <td class="text-right" colspan="2"><h2><strong>Total: </strong></h2></td>
                            <td class="text-left text-danger"><h2><strong><i class="fa fa-inr"></i><?php

                            $tot = $garde['montant']*$nombrejr;
                            echo number_format($tot,2).' USD';  ?></strong></h2></td>
                        </tr>
                    </tbody>
                </table>
            </div>
			
			<div class="row">
				<div class="receipt-header receipt-header-mid receipt-footer">
					<div class="col-xs-8 col-sm-8 col-md-8 text-left">
						<div class="receipt-right">
							<p><b>Date édition :</b> <?php echo $dates=date('Y-m-d');  ?></p>
							<p style="color: rgb(140, 140, 140);">RCM: CD/KIN/RCCM/14-B-4197</p>
							<p style="color: rgb(140, 140, 140);">Id Nat: 01-92-N67977A</p>

							<p style="color: rgb(140, 140, 140);">NIF: A1214138G</p>
						</div>
					</div>
					<div class="col-xs-4 col-sm-4 col-md-4">
						<div class="receipt-left">
							<h1>Signature</h1>
						</div>
					</div>
				</div>
            </div>
			
        </div>    
	</div>
</div>
<script type="text/javascript">

</script>
</body>
</html>
 	
 <?php } ?>





<?php }
                                    } ?>




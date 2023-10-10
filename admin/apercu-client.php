<?php 
if(isset($_POST['valider'])){
   include('includes/link.php');
   extract($_POST);
  $query1 = mysqli_query($connect,"
  INSERT INTO malebo_reservation(nom_client, prenom_client, telephone_client, adresse_mail_client, date_naissance_client, adresse_client, nationnalite_client, Nature_identiter_client, num_carte_client, date_arriver_client, date_depart_client, moif_sejour_client, provenance_client, chambre_client)



   VALUES('$nom_client','$prenom_client','$telephone_client','$adresse_mail_client','$date_naissance_client','$adresse_client', 
          '$nationnalite_client','$Nature_identiter_client', 
          '$num_carte_client','$date_arriver_client', 
          '$date_depart_client','$moif_sejour_client','$provenance_client', 
          '$chambre_client')");


  if($query1){
  	echo '
    <div class="alert alert-success">Enregistrement éffectué avec succès 

    <a href="dashboard.php" class="btn btn-primary">Ok</a></div>

  	';
  }


} ?>
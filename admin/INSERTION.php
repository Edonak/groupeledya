  <?php 

       if (isset($_POST['enregistre'])) {
              extract($_POST);
              $data=date('Y-d-m');
              $coda=mt_rand();
$requete2a=mysqli_query($connection,"SELECT *FROM services where libelle='FICHE CONSULTATION'");
                                            while ($bomba = mysqli_fetch_assoc($requete2a)) {

                                                 $prix=$bomba['prix'];




                                            }




$requete2b=mysqli_query($connection,"SELECT *FROM categories where nom_categorie='$categorie'");
                                            while ($bomba = mysqli_fetch_assoc($requete2b)) {

                                                 $pourcentage=$bomba['pourcentage'];
                                          $total=($prix*$pourcentage)/100;


        $insertion = $dbo->prepare("INSERT INTO fiche(nom_complet,sexe,age,adresse,telephone,taille,heure_ariive,categorie,service,code_fiche,prix) values(?,?,?,?,?,?,?,?,?,?,?)");

        $insertion->execute(array($nom_complet,$sexe,$age,$adresse,$telephone,$taille,$data,$categorie,$service,$coda,$prix));




$insertion = $dbo->prepare("INSERT INTO caisse_produis(nom,sexe,age,adresse,tel,taille,heure_ariive,categorie,service,code_fiche,prix,montant) values(?,?,?,?,?,?,?,?,?,?,?,?)");

              $insertion->execute(array($nom_complet,$sexe,$age,$adresse,$telephone,$taille,$data,$categorie,$service,$coda,$prix,$total));

                                            }


                                            




              {?> <script type="text/javascript">

                     Swal.fire({
                          position: 'top-end',
                          icon: 'success',
                          title: 'Opération effectuer',
                          showConfirmButton: false,
                          timer: 3500
                   })

                     setInterval(function () {
                            window.location.replace('RECEPTION.php')


                     }, 3500);
              </script>

       <?php }

}

?>
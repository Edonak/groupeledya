<?php 
  
  include('db/connectbdd.php');

  if(isset($_POST['seconnecter'])){
   
   $username = $_POST['username'];
   $password = $_POST['password'];

  $requete = mysqli_query($connect,"SELECT *FROM users WHERE username='$username' AND password = '$password'");

   while ( $garde = mysqli_fetch_assoc($requete)) {
   	
    header('Location:transition.html');


   }



  }



 ?>


 <script src="animation.js"></script>
<?php 
    session_start();
 session_destroy();
  session_start();
      if (isset($_POST['seconnecter'])) {
       
            extract($_POST);
           $recup = $db->prepare("SELECT * FROM personelles WHERE mdp = ? AND username = ? ");
$recup->execute(array($password, $username));
      $userexist = $recup->rowCount();
      if ($userexist==1) {
          $userinfo = $recup->fetch();

          $_SESSION['username'] = $userinfo['username'];

          $_SESSION['id'] = $userinfo['id'];
          $_SESSION['service']=$userinfo['service'];
           header("Location:transition.php?id=".$_SESSION['id']);


          
      }else{?>
  <script type="text/javascript">
                           let timerInterval
Swal.fire({
  title: 'ATTENTION',
  html: "  VEUILLEZ CHANGEZ VOTRE NOM D'UTILISATEUR OU MOT DE PASSE <b></b> .",
  timer: 20000,
  timerProgressBar: true,
 
}).then((result) => {
  /* Read more about handling dismissals below */
  if (result.dismiss === Swal.DismissReason.timer) {
    console.log('Veuillez recommencer')
  }
})
                     
                  </script>
                  <?php


      }
 }
         
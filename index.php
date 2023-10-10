<?php 


 ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>GROUPE LEDYA</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <div class="rainbow-background">
      <div class="container">
         <script src="animation.js" ></script>

        <?php 
     session_start();
 session_destroy();
  session_start(); 
    include('admin/db/connectbdd.php');
      if (isset($_POST['valide'])) {
       
            extract($_POST);
           $recup = $dbo->prepare("SELECT * FROM personelles WHERE mdp = ? AND username = ? ");
$recup->execute(array($mdp, $username));
      $userexist = $recup->rowCount();
      if ($userexist==1) {
          $userinfo = $recup->fetch();

          $_SESSION['username'] = $userinfo['username'];
          $_SESSION['nom_agents'] = $userinfo['nom_agents'];

          $_SESSION['id'] = $userinfo['id'];
          $_SESSION['service']=$userinfo['service'];
          
if($_SESSION['service']=='Reception_basic'){
  header("Location:admin/accueil2.php?id=".$_SESSION['id']);
} else{
      header("Location:admin/accueil.php?id=".$_SESSION['id']);
}
                    

          
          
      }else{?> <script type="text/javascript">
                           let timerInterval
Swal.fire({
  title: 'ATTENTION!',
  html: ' MOT DE PASSE OU USERNAME  <b></b> INCORRECT.',
  timer: 200000,
  timerProgressBar: true,
 
}).then((result) => {
  /* Read more about handling dismissals below */
  if (result.dismiss === Swal.DismissReason.timer) {
    console.log('Veuillez recommencer')
  }
})
                     
                  </script>
                  
               <?php }
 }

 ?>
        <form class="login-form" method="post" >
          <div class="logo-container">
            <img class="logo" src="téléchargement-removebg-preview (1).png" alt="Logo">
          </div>
          <h1><i class="fas fa-lock"></i>Connexion</h1>
          <div class="form-group">
            <label for="username"><i class="fas fa-user"></i>Nom utilisateur :</label>
            <input type="password" id="username" name="username" required>
          </div>
          <div class="form-group">
            <label for="password"><i class="fas fa-lock"></i>Mot de passe :</label>
            <input type="password" id="password" name="mdp" placeholder="" required>
          </div>
          <div class="form-group">
            <button type="submit" name="valide">Se connecter</button>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
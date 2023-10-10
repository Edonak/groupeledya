  <script src="animation.js"></script>
<?php 
     session_start();
 session_destroy();
  session_start(); 
    include('admin/db/connectbdd.php');
      if (isset($_POST['seconnecter'])) {
       
            extract($_POST);
           $recup = $dbo->prepare("SELECT * FROM personelles WHERE mdp = ? AND username = ? ");
$recup->execute(array($password, $username));
      $userexist = $recup->rowCount();
      if ($userexist==1) {
          $userinfo = $recup->fetch();

          $_SESSION['username'] = $userinfo['username'];

          $_SESSION['id'] = $userinfo['id'];
          $_SESSION['service']=$userinfo['service'];
          

                        header("Location:admin/portail.php?id=".$_SESSION['id']);

          
          
      }else{header("Location:index.php"); }
 }

 ?>
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
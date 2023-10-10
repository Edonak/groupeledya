<?php 
session_start();

$username= $_SESSION['username'];
$id= $_SESSION['id'];
$service= $_SESSION['service'];
if (empty($id)) {
   header('Location:../index.php');
}



 if ($service=='Bianderie') {
            header("Location:pressing_personnel.php?id=".$_SESSION['id']);
          }else{

                        header("Location:vente.php?id=".$_SESSION['id']);

          }

 ?>
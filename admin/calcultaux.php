<!DOCTYPE html>
<html>
<head>
	<title>calcultaux</title>
</head>
<body>
	<form method="post">
		<input type="text" name="devise">
		
		
		<input type="submit" name="enregistrer" value="calcul">
		
	</form>

</body>
</html>



<?php
require_once ('sylladev.php'); 
require_once ('sylladev.php'); 

if (isset($_POST['enregistrer'])) {
	
	extract($_POST);


	

// affichage du nombre
$nombre = $devise;
echo $nombre;

// méthode avec la classe nuts
$nuts = new nuts($nombre, 'USD');
echo $nuts->convert('fr-FR');


}
 ?>

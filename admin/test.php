<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>

	<?php 

if (isset($_POST['test'])) {
	extract($_POST);

	
$datetime1 = date_create($debut); // Date fixe
$datetime2 = date_create($fin); // Date fixe
$interval = date_diff($datetime1, $datetime2);
echo $temps=$interval->format('%a');

}

	 ?>


	
<form method="post">
	<input type="date" name="debut">
	<input type="date" name="fin">
	<input type="submit" name="test">
</form>
</body>
</html>
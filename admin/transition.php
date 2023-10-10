<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Hôtel New Malebo</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .progress {
    position: relative;
    height: 4px;
    display: block;
    width: 100%;
    background-color: #03a9f4;
    overflow: hidden
}
.progress .determinate {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    background-color: #26a69a;
    -webkit-transition: width .3s linear;
    transition: width .3s linear
}
.progress .indeterminate {
    background-color: #e7eef1;
}
.progress .indeterminate:before {
    content: '';
    position: absolute;
    background-color: inherit;
    top: 0;
    left: 0;
    bottom: 0;
    will-change: left, right;
    -webkit-animation: indeterminate 2.1s cubic-bezier(0.65, 0.815, 0.735, 0.395) infinite;
    animation: indeterminate 2.1s cubic-bezier(0.65, 0.815, 0.735, 0.395) infinite
}
.progress .indeterminate:after {
    content: '';
    position: absolute;
    background-color: inherit;
    top: 0;
    left: 0;
    bottom: 0;
    will-change: left, right;
    -webkit-animation: indeterminate-short 2.1s cubic-bezier(0.165, 0.84, 0.44, 1) infinite;
    animation: indeterminate-short 2.1s cubic-bezier(0.165, 0.84, 0.44, 1) infinite;
    -webkit-animation-delay: 1.15s;
    animation-delay: 1.15s
}
@-webkit-keyframes indeterminate {
    0% {
        left: -35%;
        right: 100%
    }
    60% {
        left: 100%;
        right: -90%
    }
    100% {
        left: 100%;
        right: -90%
    }
}
@keyframes indeterminate {
    0% {
        left: -35%;
        right: 100%
    }
    60% {
        left: 100%;
        right: -90%
    }
    100% {
        left: 100%;
        right: -90%
    }
}
@-webkit-keyframes indeterminate-short {
    0% {
        left: -200%;
        right: 100%
    }
    60% {
        left: 107%;
        right: -8%
    }
    100% {
        left: 107%;
        right: -8%
    }
}
@keyframes indeterminate-short {
    0% {
        left: -200%;
        right: 100%
    }
    60% {
        left: 107%;
        right: -8%
    }
    100% {
        left: 107%;
        right: -8%
    }
}

    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="osahanloading">
    <br><br><br><br>
    <br><br><br><br>
	<center><div class="row">
		<h2>Chargement des paramètres</h2>
	</div>
	<div class="row">
        <div class="col-sm-12">
          <div class="progress">
              <div class="indeterminate"></div>
          </div>
        </div>
    </div>
<img src="logo/WhatsApp_Image_2023-05-04_at_10.07.14-removebg-preview.png" style="border-radius: 100%; width: 10%;">
</center>
</div>
<script type="text/javascript">
$(document).ready(function(){
         $(".osahanloading").fadeOut(6000, function(){
          document.location.href="gestioon_chambre.php";

         });
         })
</script>
</body>
</html>

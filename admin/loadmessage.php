    <?php 

session_start();

$username= $_SESSION['username'];
$id= $_SESSION['id'];
$service= $_SESSION['service'];
     ?>


     <title>	GENIUS :: <?php include('config/appname.php'); ?> ::</title>

		<meta name="description" content="top menu &amp; navigation" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>
   <div class="row">
                 <div class="col-lg-7">

                       <div class="row">
                             <div class="col-xs-12">
                                <div class="row">
                                    <div class="col-xs-12">
                                     <div class="clearfix">

                                      <div class="pull-right tableTools-container"></div></div>
                                      <!-- div.table-responsive -->
                                      <!-- div.dataTables_borderWrap -->
                                      
                                      <div>

                                        
                                            

                                      
                                          <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                                                 <thead>
                                                        <tr> <th class="center">
                                                              <label class="pos-rel">
                                                                     <input type="checkbox" class="ace" />
                                                                     <span class="lbl"></span>
                                                              </label>
                                                       </th>
                                                       <th>Date d'entrée</th>
                                                       <th class="hidden-480">Code facture</th>
                                                       
                                                       <th>Noms Client</th>
                                                        <th>Telephone</th>
                                                       


                                                       
                                                 <th class="hidden-480">Percepteur</th>



                                                 <th></th>
                                          </tr>
                                   </thead>

                                   <tbody>


                                     <?php 
                                     
                                      $connection = mysqli_connect("localhost","root","","genius_hotel");

 $dbo = new PDO('mysql:host=127.0.0.1;dbname=genius_hotel','root','');
                                     $requete2 = mysqli_query($connection,"SELECT *FROM caisse_pressing  where etat=1 group by code_facture");
                                     while ($garde = mysqli_fetch_assoc($requete2)) {  ?>

                                           <tr>
                                                 <td class="center">
                                                       <label class="pos-rel">
                                                             <input type="checkbox" class="ace" />
                                                             <span class="lbl"></span>
                                                      </label>
                                               </td>
                                               <td><?php echo $garde['date_operation']; ?></td>
                                               <td><a href="#"><?php echo $garde['code_facture']; ?></a></td>
                                               <td><?php echo $garde['client']; ?></td>
                                               <td class="hidden-480"><?php echo $d = $garde['Telephone']; ?></td>
                                               <td><?php echo $garde['percepteur']; ?></td>

                                             





                                             <td>
                                                    <div class="hidden-sm hidden-xs action-buttons">
   <a class="blue" href="pressing_personnel.php?voir=<?php echo $garde['code_facture']; ?>">
                                                                <i class="ace-icon fa fa-search-plus bigger-130"></i></a>
<?php 
if ($service=='Bianderie') { ?>
    <a class="red" href="pressing_personnel.php?imp=<?php echo $garde['code_facture']; ?>">
                                                                <i class="ace-icon fa fa-edit bigger-130"></i></a>
<?php }

 ?>


 <?php  $position=$garde['position'];
if ($position==1) { ?>
 <a class="green" href="">TACHE EFFECTUER</a>
<?php }else{?>

 <a class="blue" href="">TACHE NON EFFECTUER</a>

<?php }

echo "effectuer par:".' '.$tache=$garde['tache'];
 ?>

                                                               

                                                                <!--       <?php $etat = $garde['etat']; 
                                                                if($etat == 0){ ?>
                                                                      <a class="red" href="payement.php?id=<?php echo $garde['id']; ?>">
                                                                            <i class="ace-icon fa fa-check bigger-130"></i> Payer</a>
                                                                     <?php }else if($etat == 1){ ?>
                                                                            <a class="green" href="payement.php?id=<?php echo $garde['id']; ?>">
                                                                                  <i class="ace-icon fa fa-check bigger-130"></i> Déjà payé</a>
                                                                           <?php }?>  -->
                                                           


                                                                    </div>
                                                                    <div class="hidden-md hidden-lg"><div class="inline pos-rel">
                                                                     <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto"><i class="ace-icon fa fa-caret-down icon-only bigger-120"></i></button><ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close"><li>
                                                                           <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                                 <span class="blue"><i class="ace-icon fa fa-search-plus bigger-120"></i></a></li><li><a href="#" class="tooltip-success" data-rel="tooltip" title="Edit"><span class="green"><i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                                 </a></li><li><a href="#" class="tooltip-error" data-rel="tooltip" title="Delete"><span class="red"><i class="ace-icon fa fa-trash-o bigger-120"></i></span></a></li></ul></div></div></td></tr>

                                                                          <?php }

                                                                          ?>












                                       

</tbody>

</table>

</div>

 

</div>
</div>




<!-- PAGE CONTENT ENDS -->
</div><!-- /.col -->
</div><!-- /.row -->
</div>
<?php 
if (isset($_GET['voir'])) {
    extract($_GET);

 ?>







<div class="col-lg-5">

    <?php 
$sql = mysqli_query($connection,"SELECT *FROM caisse_pressing WHERE code_facture='$voir' group by code_facture");
while ($garde = mysqli_fetch_assoc($sql)) { ?>
     <h3>
                 Client : <?php echo $garde['client']; ?> <br> Telephone: <?php echo $garde['Telephone']; ?> 
                
          </h3>



          <?php }
 ?>
    <!-- /.page-header -->

   


<img src="logo/REPASSAGE-CHEMISE.gif" style="width: 50%;">
<a href="situation-chambres.php" class="btn btn-app btn-success">
    <i class="ace-icon fa fa-male bigger-230"></i>
    EXPRESSE
    <span class="badge badge-danger badge-right"><?php 
    $query5 = mysqli_query($connection,"SELECT COUNT(id) AS nbr FROM caisse_pressing WHERE  code_facture='$voir' and delimitation='expresse'");
    while ($gr = mysqli_fetch_assoc($query5)) {
          echo $gr['nbr'];
   } ?></span>
</a>



   <?php 
$sql = mysqli_query($connection,"SELECT *FROM caisse_pressing WHERE code_facture='$voir' and delimitation='expresse'");
while ($garde = mysqli_fetch_assoc($sql)) { ?>
     <h3>
                 Designation : <?php echo $garde['designation']; ?> <br> Quantité: <?php echo $garde['qte']; ?> 
                
          </h3>



          <?php }
 ?>

<br><br><br>




<img src="logo/images.jpg" style="width: 50%;">




<a href="situation-chambres.php" class="btn btn-app btn-warning radius-7">
    <i class="ace-icon fa fa-male bigger-230"></i>
    NORMAL
    <span class="badge badge-primary badge-right">
          <?php 
          $query5 = mysqli_query($connection,"SELECT COUNT(id) AS nbr FROM caisse_pressing WHERE  code_facture='$voir' and delimitation='normale'");
          while ($gr = mysqli_fetch_assoc($query5)) {
                echo $gr['nbr'];
         } ?>
  </span>
</a>

   <?php 
$sql = mysqli_query($connection,"SELECT *FROM caisse_pressing WHERE code_facture='$voir' and delimitation='normale'");
while ($garde = mysqli_fetch_assoc($sql)) { ?>
     <h3>
                 Designation : <?php echo $garde['designation']; ?> <br> Quantité: <?php echo $garde['qte']; ?> 
                
          </h3>



          <?php }
 ?>











</div>


<?php }


 ?>

</div>  































                                      
                                      
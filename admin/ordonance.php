            <?php include('includes/link.php'); ?>
            <?php include('includes/hea.php'); ?>
            <?php include'db/connectbdd.php';?>


            <div class="main-content">
            	<div class="main-content-inner">
            		<div class="page-content">
            			<div class="ace-settings-container" id="ace-settings-container">
            				<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
            					<i class="ace-icon fa fa-cog bigger-130"></i>
            				</div>

            				<div class="ace-settings-box clearfix" id="ace-settings-box">
                             <div class="pull-left width-50">
                              <div class="ace-settings-item">
                               <div class="pull-left">
                                  <select id="skin-colorpicker" class="hide">
                                     <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                     <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                     <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                     <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                 </select>
                             </div>
                             <span>&nbsp; Choose Skin</span>
                         </div>

                         <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
                            <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
                            <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
                            <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
                            <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                        </div>

                        <div class="ace-settings-item">
                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
                            <label class="lbl" for="ace-settings-add-container">
                              Inside
                              <b>.container</b>
                          </label>
                      </div>
                  </div><!-- /.pull-left -->

                  <div class="pull-left width-50">
                     <div class="ace-settings-item">
                       <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
                       <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                   </div>

                   <div class="ace-settings-item">
                       <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
                       <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                   </div>

                   <div class="ace-settings-item">
                       <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
                       <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                   </div>
               </div><!-- /.pull-left -->
           </div><!-- /.ace-settings-box -->
       </div><!-- /.ace-settings-container -->

       <div class="page-header">

        <h1>
          TABLEAU DE BORD
          <small>
            <i class="ace-icon fa fa-angle-double-right"></i>
            Tableau de données ci-dessous
        </small>
    </h1>
</div><!-- /.page-header -->

<div class="row">

   <div class="col-xs-12">
     <!-- PAGE CONTENT BEGINS -->




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
                            <tr> <th >
                                id  
                            </th>
                            <th>Designation</th>
                            <th>Forme</th>
                            <th>
                                <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                                Opération
                            </th>









                        </tr>
                    </thead>




                    <?php 

                    if (isset($_GET['sup'])) {
                     extract($_GET);




                     $sqll=mysqli_query($connection,"DELETE FROM ordonances where id='$sup' ");

                     {?> <script type="text/javascript">


                        window.location.replace('ordonance.php')



                    </script>

                <?php }
            }




            ?>


            <tbody>


               <?php 
               $requete2 = mysqli_query($connection,"SELECT *FROM produits");
               while ($garde = mysqli_fetch_assoc($requete2)) {  ?>









                 <tr>
                   <td >
                     <?php echo $garde['id'];  ?>
                 </td>
                 <td><a href="#"><h4><?php echo $garde['nom_produits'];  ?>  </h4></a></td>

                 <td><a href=""><?php echo $garde['type_produits']; ?> </a></td>
               











                 <td>
                    <div class="hidden-sm hidden-xs action-buttons">




                     <a class="blue" href="ordonance.php?credit=<?php echo $garde['id']; ?>" >
                       <i class="ace-icon fa fa- bigger-130"> <img src="icones/shopping_cart_48px.png" style="width:45%" style="color: red;"></i></a>


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

<div class="col-lg-5">
   <!-- /.page-header -->

   <script src="animation.js" ></script>

   <?php 


   if (isset($_GET['credit'])) {
     extract($_GET);

     $requete2 = mysqli_query($connection,"SELECT *FROM produits where id='$credit' ORDER BY id DESC");
     while ($garde = mysqli_fetch_assoc($requete2)) {


        $nom_produits=$garde['nom_produits']; 
        $posologie=$garde['posologie'];
        $type_produits=$garde['type_produits'];





    }

    $date_enregistrement=date('Y-m-d');

    $qte_cart=1;

    $insertion = $dbo->prepare("INSERT INTO  ordonances(nom_produits,posologie,type_produits,qte_cart,username,date_enregistrement) values(?,?,?,?,?,?)");

    $insertion->execute(array($nom_produits,$posologie,$type_produits,$qte_cart,$username,$date_enregistrement));





    {?> <script type="text/javascript">




        window.location.replace('ordonance.php')



    </script>

<?php }
}


?>




<br><br><br>

<!-- /.page-header -->



<table class="table table-bordered">
    <thead>
      <script src="animation.js" ></script>
      <?php 

      if (isset($_POST['inserer'])  ) {
        extract($_POST);


        $totpt=$qte*$pt;

        $requeteAAA = mysqli_query($connection,"UPDATE caisse_restaurant SET qte='$qte',pt='$totpt' where id='$idp' ");

        {?> <script type="text/javascript">

           Swal.fire({
              position: 'top-end',
              icon: 'success',
              title: 'ajoute effectuer',
              showConfirmButton: false,
              timer: 35
          })

           setInterval(function () {
            window.location.replace('boisson_operation.php')


        }, 35);
    </script>

<?php }
}

?>






<?php

if (isset($_POST['valider'])  ) {
    extract($_POST);

    $api_url="https://api2.dream-digital.info/api/SendSMS?api_id=API13089180754&api_password=uMMqjmk4hw&sms_type=T&encoding=T&sender_id=SMED-CLINIC&phonenumber=243810015922&textmessage=Testing";

    $code_facture=mt_rand();
    $dates=date('Y-m-d');

    $datess=date('l');










    include("Qr code/libs/phpqrcode/qrlib.php");
    $tempDir = 'Qr code/temp/';
    $filename = $dates.$code_facture;
    $filenamex = $code_facture;

    $body = 'code de la facture'.' '.$filenamex.' '.'Telephone:'.' '.'+243 850562701'.' '.''.' '.'SMED PHARMACIE';
    QRcode::png($body, $tempDir.''.$filename.'.png', QR_ECLEVEL_L, 5);
    $lienqr= $tempDir.$filename.'.png';
    $mobile = $tel;
    $sender = 'SMEDCLINIC';
    $message = urlencode('Votre code ordonance:'.' est '.$filenamex.' prescrit par le docteur :'.$username.' '.'www.genius-sylla.com');


//Submit to server
    $api_url = "https://api2.dream-digital.info/api/SendSMS?api_id=API21745164837&api_password=u9Ea1tgDiX&sms_type=T&encoding=T&sender_id=".$sender."&phonenumber=".$mobile."&textmessage=".$message."";
//Submit to server




    $requeteAAA = mysqli_query($connection,"UPDATE ordonances SET etat=1,code_facture='$filenamex',qrcode='$lienqr',tel='$tel',age='$age',poids='$poids',sexe='$sexe',docteur='$docteur',nom='$nom' where etat=0 ");

    {?> <script type="text/javascript">

       Swal.fire({
          position: 'top-end',
          icon: 'success',
          title: 'Facture valider',
          showConfirmButton: false,
          timer: 3500
      })

       setInterval(function () {
        window.location.replace('archives_ordonance.php')


    }, 3500);
</script>

<?php }
}

?>


<tr>                <th scope="col">Produit</th>

    <th scope="col">Forme</th>
    <th scope="col">Posologie</th>

    <th scope="col">Quantité</th>

<?php 
if (isset($_POST['valideDDr'])) {
    extract($_POST);


   $requeteAAA = mysqli_query($connection,"UPDATE ordonances SET posologie='$Posologie',dosage='$dosage' where id='$sylla' ");


 {?> <script type="text/javascript">


        window.location.replace('ordonance.php')

</script>

<?php }

}
 ?>





<?php 
if (isset($_POST['valideDDxr'])) {
    extract($_POST);


   $requeteAAA = mysqli_query($connection,"UPDATE ordonances SET qte_cart='$qte_cart',presentation='$presentation' where id='$sylla' ");


 {?> <script type="text/javascript">


        window.location.replace('ordonance.php')

</script>

<?php }

}
 ?>
</tr>
</thead>
<tbody>
 <?php 
 $requete2 = mysqli_query($connection,"SELECT *FROM ordonances where etat=0  ORDER BY id DESC");
 while ($garde = mysqli_fetch_assoc($requete2)) {  ?>




     <tr>
        <td><a href="#"><?php echo $garde['nom_produits']; ?></a></td>

        <td><a href=""><?php echo $garde['type_produits']; ?> </a></td>
        <td><form method="post">
            <input type="text" name="Posologie" value="<?php echo $garde['posologie']; ?>"placeholder="posologie">
            <input type="text" name="dosage" placeholder="dosage" value="<?php echo $garde['dosage']; ?>">
            <input type="hidden" name="sylla" value="<?php echo $garde['id']; ?>">
            <input type="submit" class="btn btn-minier" value="valide" name="valideDDr">
        </form> </td>
        <td>

<form method="post">
            <input type="text" name="qte_cart" value="<?php echo $garde['qte_cart']; ?>"placeholder="la quantite">
            <select  class="form-control" name="presentation">
                                     <option>COMPRIME</option>
                                     <option>FLACON</option>
                                     <option>PLAQUETTE</option>
                                     <option>TUBE</option>
                                   
                                   
                                 </select>
         
            <input type="hidden" name="sylla" value="<?php echo $garde['id']; ?>">
            <input type="submit" class="btn btn-minier" value="valide" name="valideDDxr">
        </form> 

            </td>







        <td><a class="red" href="ordonance.php?sup=<?php echo $garde['id']; ?>"><i class="ace-icon fa fa-trash bigger-130"></i></a> </td>
    </tr>
<?php }

?>

</tbody>
<footer>
    <tr>
        <td>TOTAL </td>
        <td><strong>   <?php  $requete2 = mysqli_query($connection,"SELECT count(id) as normale FROM ordonances where etat=0 ");
        while ($garde = mysqli_fetch_assoc($requete2)) {

           $nn=$garde['normale'];

           echo $nn; 

       }
   ?> Produits prescrit</strong></td>





   


    <form method="post">

<td>
    <select name="sexe">
        <option>homme</option>
        <option>femme</option>
    </select>
    <input type="text" name="nom" placeholder="Nom du patient">
        <input type="tel" name="age" placeholder="age">
    <input type="tel" name="poids" placeholder="poids">
<input type="tel" name="docteur" placeholder="docteur">
<input type="tel" name="tel" placeholder="telephone du client"></td>


        <td><input type="submit" name="valider" value="Terminer"class="btn btn-danger"></td>


        

    </form>





</tr>
</footer>
</table>

<br><br>

<!-- /.page-header -->





</div>
</div>	

<!-- PAGE CONTENT ENDS -->
</div><!-- /.col -->
</div><!-- /.row -->
</div><!-- /.page-content -->
</div>
</div><!-- /.main-content -->

<?php include('includes/ft.php'); ?>

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="assets/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
 <script type="text/javascript">
         //line
    var ctxL = document.getElementById("lineChart").getContext('2d');
    var myLineChart = new Chart(ctxL, {
      type: 'line',
      data: {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [{
          label: "My First dataset",
          data: [65, 59, 80, 81, 56, 55, 40],
          backgroundColor: [
           'rgba(105, 0, 132, .2)',
           ],
          borderColor: [
           'rgba(200, 99, 132, .7)',
           ],
          borderWidth: 2
      },
      {
          label: "My Second dataset",
          data: [28, 48, 40, 19, 86, 27, 90],
          backgroundColor: [
           'rgba(0, 137, 132, .2)',
           ],
          borderColor: [
           'rgba(0, 10, 130, .7)',
           ],
          borderWidth: 2
      }
      ]
    },
    options: {
        responsive: true
    }
});


    if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.min.js"></script>
<script src="assets/js/dataTables.buttons.min.js"></script>
<script src="assets/js/buttons.flash.min.js"></script>
<script src="assets/js/buttons.html5.min.js"></script>
<script src="assets/js/buttons.print.min.js"></script>
<script src="assets/js/buttons.colVis.min.js"></script>
<script src="assets/js/dataTables.select.min.js"></script>

<!-- ace scripts -->
<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
  jQuery(function($) {
				//initiate dataTables plugin
   var myTable = 
   $('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
   .DataTable( {
     bAutoWidth: false,
     "aoColumns": [
      { "bSortable": false },
      null, null,
      { "bSortable": false }
      ],
     "aaSorting": [],


					//"bProcessing": true,
			        //"bServerSide": true,
			        //"sAjaxSource": "http://127.0.0.1/table.php"	,

					//,
					//"sScrollY": "200px",
					//"bPaginate": false,

					//"sScrollX": "100%",
					//"sScrollXInner": "120%",
					//"bScrollCollapse": true,
					//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
					//you may want to wrap the table inside a "div.dataTables_borderWrap" element

					//"iDisplayLength": 50


     select: {
       style: 'multi'
   }
} );



   $.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';

   new $.fn.dataTable.Buttons( myTable, {
     buttons: [
     {
       "extend": "colvis",
       "text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
       "className": "btn btn-white btn-primary btn-bold",
       columns: ':not(:first):not(:last)'
   },
   {
       "extend": "copy",
       "text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
       "className": "btn btn-white btn-primary btn-bold"
   },
   {
       "extend": "csv",
       "text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
       "className": "btn btn-white btn-primary btn-bold"
   },
   {
       "extend": "excel",
       "text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
       "className": "btn btn-white btn-primary btn-bold"
   },
   {
       "extend": "pdf",
       "text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
       "className": "btn btn-white btn-primary btn-bold"
   },
   {
       "extend": "print",
       "text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
       "className": "btn btn-white btn-primary btn-bold",
       autoPrint: false,
       message: 'This print was produced using the Print button for DataTables'
   }		  
   ]
 } );
   myTable.buttons().container().appendTo( $('.tableTools-container') );

				//style the message box
   var defaultCopyAction = myTable.button(1).action();
   myTable.button(1).action(function (e, dt, button, config) {
     defaultCopyAction(e, dt, button, config);
     $('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
 });


   var defaultColvisAction = myTable.button(0).action();
   myTable.button(0).action(function (e, dt, button, config) {

     defaultColvisAction(e, dt, button, config);


     if($('.dt-button-collection > .dropdown-menu').length == 0) {
       $('.dt-button-collection')
       .wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
       .find('a').attr('href', '#').wrap("<li />")
   }
   $('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
});

				////

   setTimeout(function() {
     $($('.tableTools-container')).find('a.dt-button').each(function() {
       var div = $(this).find(' > div').first();
       if(div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
       else $(this).tooltip({container: 'body', title: $(this).text()});
   });
 }, 500);





   myTable.on( 'select', function ( e, dt, type, index ) {
     if ( type === 'row' ) {
       $( myTable.row( index ).node() ).find('input:checkbox').prop('checked', true);
   }
} );
   myTable.on( 'deselect', function ( e, dt, type, index ) {
     if ( type === 'row' ) {
       $( myTable.row( index ).node() ).find('input:checkbox').prop('checked', false);
   }
} );




				/////////////////////////////////
				//table checkboxes
   $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

				//select/deselect all rows according to table header checkbox
   $('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$('#dynamic-table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) myTable.row(row).select();
						else  myTable.row(row).deselect();
					});
				});

				//select/deselect a row when the checkbox is checked/unchecked
   $('#dynamic-table').on('click', 'td input[type=checkbox]' , function(){
     var row = $(this).closest('tr').get(0);
     if(this.checked) myTable.row(row).deselect();
     else myTable.row(row).select();
 });



   $(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
     e.stopImmediatePropagation();
     e.stopPropagation();
     e.preventDefault();
 });



				//And for the first simple table, which doesn't have TableTools or dataTables
				//select/deselect all rows according to table header checkbox
   var active_class = 'active';
   $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$(this).closest('table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
						else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
					});
				});

				//select/deselect a row when the checkbox is checked/unchecked
   $('#simple-table').on('click', 'td input[type=checkbox]' , function(){
     var $row = $(this).closest('tr');
     if($row.is('.detail-row ')) return;
     if(this.checked) $row.addClass(active_class);
     else $row.removeClass(active_class);
 });



				/********************************/
				//add tooltip for small view action buttons in dropdown menu
   $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});

				//tooltip placement on right or left
   function tooltip_placement(context, source) {
     var $source = $(source);
     var $parent = $source.closest('table')
     var off1 = $parent.offset();
     var w1 = $parent.width();

     var off2 = $source.offset();
					//var w2 = $source.width();

     if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
     return 'left';
 }




				/***************/
 $('.show-details-btn').on('click', function(e) {
     e.preventDefault();
     $(this).closest('tr').next().toggleClass('open');
     $(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
 });
				/***************/





				/**
				//add horizontal scrollbars to a simple table
				$('#simple-table').css({'width':'2000px', 'max-width': 'none'}).wrap('<div style="width: 1000px;" />').parent().ace_scroll(
				  {
					horizontal: true,
					styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
					size: 2000,
					mouseWheelLock: true
				  }
				).css('padding-top', '12px');
				*/


})
</script>



<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>
    <div class="modal-body">
        <form>
          <div class="mb-3">
            <label for="recipient-name" class="col-form-label">Recipient:</label>
            <input type="text" class="form-control" id="recipient-name">
        </div>
        <div class="mb-3">
            <label for="message-text" class="col-form-label">Message:</label>
            <textarea class="form-control" id="message-text"></textarea>
        </div>
    </form>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
    <button type="button" class="btn btn-primary">Send message</button>
</div>
</div>
</div>
</div>
</body>
</html>

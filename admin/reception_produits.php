<?php include('includes/link.php'); ?>
<?php include('includes/hea.php'); ?>
<script type="text/javascript" src="Chart.bundle.min.js"></script>
<style type="text/css">


</style>




<div class="row">
  <div class="col-xs-12">
    <!-- PAGE CONTENT BEGINS -->
<h1 class="blue">Réception des produits et articles</h1>
<hr>
    <div class="row">

        <div class="col-lg-12">
        <form class="form-row" method="post">
        <div class="form-row">
        <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
        <label for="validationCustom03">Designation</label>
        <input type="text" list="designation" name="designation" class="form-control"  class="form-control"/>
        <datalist id="designation" >
       <?php 
       $sl1 = mysqli_query($connect,"SELECT *FROM malebo_stock group by designation ");
        while ($g1 = mysqli_fetch_assoc($sl1)) {?>
      
                                         <option><?php echo $g1['designation']; ?> </option>                                                           <?php } ?>

                                                    </datalist>
                                               
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom04">Quantiter réçu</label>
                                                <input type="text" class="form-control" name="qte" placeholder="Qté" required>
                                               
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">N°commande </label>
                                                <input type="text" class="form-control" name="num_commande" placeholder="BL" required>
                                                
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">N° Lot </label>
                                                <input type="text" class="form-control" name="lot" placeholder="lot" required>
                                                
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Date de réception </label>
                                                <input type="date" class="form-control" name="date_reception" placeholder="BL" required>
                                               
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Date d'expiration </label>
                                                <input type="date" class="form-control" name="date_expiration" placeholder="BL" required>
                                               
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Emplacement </label>
                                              

                                                 <input type="text" list="emplacement" name="emplacement" class="form-control"  class="form-control"/>
                                                    <datalist id="emplacement" >
                                                     <?php 
                                         $sl1 = mysqli_query($connect,"SELECT *FROM malebo_stock group by emplacement ");
                                         while ($g1 = mysqli_fetch_assoc($sl1)) {?>
      
                                         <option><?php echo $g1['emplacement']; ?> </option>
                                                                <?php } ?>

                                                    </datalist>
                                               
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Catégorie </label>
                                               

                                                 <input type="text" list="categorie" name="categorie" class="form-control"  class="form-control"/>
                                                    <datalist id="categorie" >
                                                     <?php 
                                         $sl1 = mysqli_query($connect,"SELECT *FROM malebo_stock group by categorie ");
                                         while ($g1 = mysqli_fetch_assoc($sl1)) {?>
      
                                         <option><?php echo $g1['categorie']; ?> </option>
                                                                <?php } ?>

                                                    </datalist>
                                                
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Prix unitaire </label>
                                                <input type="text" class="form-control" name="pu" placeholder="Prix unitaire" required>
                                               
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Prix total </label>
                                                <input type="text" class="form-control"name="pt" placeholder="Prix total" required>
                                               
                                            </div>

                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Provenace/ fournisseur </label>
                                                    <input type="text" list="cars"  class="form-control" name="provenance" />
                                                   <datalist id="cars" >
                                                        <?php 
                                         $sl1 = mysqli_query($connect,"SELECT *FROM malebo_stock group by provenance ");
                                         while ($g1 = mysqli_fetch_assoc($sl1)) {?>
      
                                         <option><?php echo $g1['provenance']; ?> </option>
                                                                <?php } ?>
                                                    </datalist>
                                              
                                               
                                            </div>
                                            
                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Mode d'acquisition </label>
                                                <select class="form-control" name="mode_acquisition">
                                                    <option></option>
                                                    <option>Achat</option>
                                                    <option>Dons</option>
                                                </select>
                                               
                                            </div>

                                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Alerte Stock </label>
                                                <input type="number" class="form-control"name="stock_minimun" placeholder="Saissisez le stock minimum" required>
                                               
                                            </div>


                                             <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
                                                <label for="validationCustom05">Alerte Expiration </label>
                <input type="number" class="form-control"name="alert_expiration" placeholder="Saissisez le stock minimum" required>
                                               
                                            </div>
                                          
          <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 " align="center">
            <hr>
          <button class="btn btn-warning btn-block" type="submit" name="enregistre">Enregistre</button>
                                            </div>
                 
                                    </form></div>
    </div>
    <hr>
    <div class="col-lg-12">


      <div class="row">
        <div class="col-xs-12">

          <div class="clearfix">
            <div class="pull-right tableTools-container"></div>
          </div>
          <div class="table-header">
            <div class="row">
              <div class="col-lg-5">Reception des produits et articles</div>
              <form action="#" method="post">
              <div class="col-lg-5"> <input type="search" placeholder="Veuillez faire le filtrage des produits en saisisant un index de rechercche..." name="critere" class="form-control" style="height:50px;"></div>
              <div class="col-lg-2"><input type="submit" style="height:50px;" name="ok" value="Afficher" class="btn btn-success btn-block"></div>
              </form>
            </div>


<?php 
if (isset($_POST['enregistre'])) {
  extract($_POST);
$jours= date('d');
$mois= date('m');
$annes= date('Y');

$date_compte = date('d-m-Y');

$datetime1 = date_create($date_comptes); // Date fixe
$datetime2 = date_create($date_expiration); // Date fixe
$interval = date_diff($datetime1, $datetime2);
$temps_verif=$interval->format('%a');
$code=mt_rand();
$entree_sortie='entree';

$insertion = $db->prepare("INSERT INTO   malebo_stock(designation,qte,num_commande,lot,date_reception,date_expiration,emplacement,categorie,pu,pt,provenance,mode_acquisition,code,entree_sortie,jours_expiration,stock_minimun,alert_expiration) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
$insertion->execute(array($designation,$qte,$num_commande,$lot,$date_reception,$date_expiration,$emplacement,$categorie,$pu,$pt,$provenance,$mode_acquisition,$code,$entree_sortie,$temps_verif,$stock_minimun,$alert_expiration));


{?> <script type="text/javascript">
    Swal.fire({
  title: 'Produit enregistre Merci!!',
  showClass: {
    popup: 'animate__animated animate__fadeInDown'
  },
  hideClass: {
    popup: 'animate__animated animate__fadeOutUp'
  }
})
    setInterval(function () {
window.location.replace('stock.php')


}, 1500);
    </script>

<?php }


}


     ?>

            
             
            
          </div>

          <!-- div.table-responsive -->

          <!-- div.dataTables_borderWrap -->
          <div>
            <table id="dynamic-table" class="table table-striped table-bordered table-hover" name = "dynamic-table">
              <thead>
                <tr>
                  <th class="center">
                    <label class="pos-rel">
                      <input type="checkbox" class="ace" />
                      <span class="lbl"></span>
                    </label>
                  </th>
                  <th>Date réception</th>
                  <th>Désignation</th>
                  <th>Catégorie</th>
                  <th>Emplacement</th>
                  <th>Qté receptionnée</th>

                  <th>Provenance</th>
                  <th>Jour critque</th>
                  <th>Qté critque</th>
                  <th>Qté sortant</th>
                  <th>Reste</th>
                  <th></th>
                </tr>
              </thead>
               <tfoot>
                 <tr>
                   <td colspan="10"><strong>TOTAL GENERAL</strong></td>
                   <td colspan="3"><strong>
                     </strong>
                   </td>
                 </tr>
               </tfoot>
              <tbody>
                <?php
                if(isset($_POST['ok'])){
                  extract($_POST);
                  $sql = mysqli_query($connect, "SELECT *FROM malebo_stock WHERE designation='$critere' OR num_commande='$critere' OR emplacement='$critere' OR date_reception='$critere' OR categorie='$critere'  ORDER BY id DESC");
                }else{
                  $sql = mysqli_query($connect, "SELECT *FROM malebo_stock ORDER BY id DESC");
                }
                

                while ($garde = mysqli_fetch_assoc($sql)) { ?>

                  <tr>
              <td class="center">
            <a href="fiche-produit.php?id=<?php echo $garde['designation']; ?>"><?php echo $garde['id']; ?></a>
              </td>

                    <td>
                      <a href="fiche-produit.php?id=<?php echo $garde['designation']; ?>"><?php echo $garde['date_reception']; ?></a>
                    </td>
                    <td>
                      <a href="fiche-produit.php?id=<?php echo $garde['designation']; ?>"><?php echo $garde['designation']; ?></a>
                    </td>

                    <td>
                      <a href="fiche-produit.php?id=<?php echo $garde['designation']; ?>"><?php echo $garde['categorie']; ?></a>
                    </td>

                    <td><?php echo $garde['emplacement']; ?></td>
                    <td><?php echo $garde['qte']; ?></td>

                    <td><?php echo $garde['provenance']; ?></td>
                    <td><?php echo $garde['jours_expiration']; ?></td>
                    <td><?php echo $garde['stock_minimun']; ?></td>
                    <td><?php echo $garde['qte_sortie']; ?></td>
<td>
<?php echo $reste = $garde['qte'] - $garde['qte_sortie']; ?></td>







                    <td>
                      <div class="hidden-sm hidden-xs action-buttons">
                        

                        <a class="green" href="modifier-produit-materiel.php?cod=<?php echo $garde['id']; ?>">
                          <i class="ace-icon fa fa-pencil bigger-130"></i>
                        </a>

                        <a class="red" href="recep-pro-phar.php?delete=<?php echo $garde['id']; ?>">
                          <i class="ace-icon fa fa-trash-o bigger-130"></i>
                        </a>

                        
                      </div>

                      <div class="hidden-md hidden-lg">
                        <div class="inline pos-rel">
                          <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                            <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                          </button>

                          <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                            <li>
                              <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                <span class="blue">
                                  <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                </span>
                              </a>
                            </li>

                            <li>
                              <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                <span class="green">
                                  <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                </span>
                              </a>
                            </li>

                            <li>
                              <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
                                <span class="red">
                                  <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                </span>
                              </a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </td>
                  </tr>


                <?php } ?>











              </tbody>
            </table>
          </div>
        </div>
      </div>

    </div>


  </div><!-- /.col -->
</div><!-- /.row -->
</div><!-- /.page-content -->
</div>
</div><!-- /.main-content -->

<div class="footer">
  <div class="footer-inner">
    <div class="footer-content">
      <span class="bigger-120">
        <span class="blue bolder">Hôtel New Malebo</span>
        TAS &copy; 2023
      </span>

      &nbsp; &nbsp;

    </div>
  </div>
</div>

<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
  <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
</a>
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="assets/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript">
  if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
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
      .DataTable({
        bAutoWidth: false,
        "aoColumns": [{
            "bSortable": false
          },
          null, null, null, null, null,
          {
            "bSortable": false
          }
        ],
        "aaSorting": [],


        //"bProcessing": true,
        //"bServerSide": true,
        //"sAjaxSource": "http://127.0.0.1/table.php" ,

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
      });



    $.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';

    new $.fn.dataTable.Buttons(myTable, {
      buttons: [{
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
    });
    myTable.buttons().container().appendTo($('.tableTools-container'));

    //style the message box
    var defaultCopyAction = myTable.button(1).action();
    myTable.button(1).action(function(e, dt, button, config) {
      defaultCopyAction(e, dt, button, config);
      $('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
    });


    var defaultColvisAction = myTable.button(0).action();
    myTable.button(0).action(function(e, dt, button, config) {

      defaultColvisAction(e, dt, button, config);


      if ($('.dt-button-collection > .dropdown-menu').length == 0) {
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
        if (div.length == 1) div.tooltip({
          container: 'body',
          title: div.parent().text()
        });
        else $(this).tooltip({
          container: 'body',
          title: $(this).text()
        });
      });
    }, 500);





    myTable.on('select', function(e, dt, type, index) {
      if (type === 'row') {
        $(myTable.row(index).node()).find('input:checkbox').prop('checked', true);
      }
    });
    myTable.on('deselect', function(e, dt, type, index) {
      if (type === 'row') {
        $(myTable.row(index).node()).find('input:checkbox').prop('checked', false);
      }
    });




    /////////////////////////////////
    //table checkboxes
    $('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);

    //select/deselect all rows according to table header checkbox
    $('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function() {
      var th_checked = this.checked; //checkbox inside "TH" table header

      $('#dynamic-table').find('tbody > tr').each(function() {
        var row = this;
        if (th_checked) myTable.row(row).select();
        else myTable.row(row).deselect();
      });
    });

    //select/deselect a row when the checkbox is checked/unchecked
    $('#dynamic-table').on('click', 'td input[type=checkbox]', function() {
      var row = $(this).closest('tr').get(0);
      if (this.checked) myTable.row(row).deselect();
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
    $('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function() {
      var th_checked = this.checked; //checkbox inside "TH" table header

      $(this).closest('table').find('tbody > tr').each(function() {
        var row = this;
        if (th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
        else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
      });
    });

    //select/deselect a row when the checkbox is checked/unchecked
    $('#simple-table').on('click', 'td input[type=checkbox]', function() {
      var $row = $(this).closest('tr');
      if ($row.is('.detail-row ')) return;
      if (this.checked) $row.addClass(active_class);
      else $row.removeClass(active_class);
    });



    /********************************/
    //add tooltip for small view action buttons in dropdown menu
    $('[data-rel="tooltip"]').tooltip({
      placement: tooltip_placement
    });

    //tooltip placement on right or left
    function tooltip_placement(context, source) {
      var $source = $(source);
      var $parent = $source.closest('table')
      var off1 = $parent.offset();
      var w1 = $parent.width();

      var off2 = $source.offset();
      //var w2 = $source.width();

      if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2)) return 'right';
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
</body>

</html>
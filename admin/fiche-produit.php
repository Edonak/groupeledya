<?php
if (isset($_GET['id'])) {
   $id = $_GET['id'];

if ($id) { ?>


	<?php

include('includes/link.php');
include('includes/hea.php');

?>
<script type="text/javascript" src="Chart.bundle.min.js"></script>
<style type="text/css">


</style>




<div class="row">
  <div class="col-xs-12">
   <div class="main-content">
        <div class="main-content-inner">
          <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
              <li>
                <i class="ace-icon fa fa-home home-icon"></i>
                <a href="#">Accueil</a>
              </li>

              <li>
                <a href="#">Mise à jour</a>
              </li>
              <li class="active">Sortie des produits</li>
            </ul><!-- /.breadcrumb -->

            <div class="nav-search" id="nav-search">
              <form class="form-search">
                <span class="input-icon">
                  <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                  <i class="ace-icon fa fa-search nav-search-icon"></i>
                </span>
              </form>
            </div><!-- /.nav-search -->
          </div>

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


            <div class="row">
              <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->
                <h2 class="blue">FICHE DU PRODUIT: <?php echo $id?></h2>
                <form class="form-horizontal" method="post" action="#" role="form">

      </div>
      <div class="col-lg-12">
        
          <?php if (isset($_POST['ajouter_produit'])) {
            extract($_POST);


            $sql = mysqli_query($connect, "SELECT COUNT(*) AS nombre FROM produits_et_materiels_receptionners");
            while ($g = mysqli_fetch_assoc($sql)) {

              $seconde = date('Y');
              $nombre = $g['nombre'] + 1;
              $compt = $nombre;
              $code = "P00" . $compt;
            }
            $designation = strtoupper($designation);
            $query = mysqli_query($connect, "INSERT INTO produits_et_materiels_receptionners(idrecep,daterecep, designation, categorie, forme, qtefournie, emballage, conditionnement, qtestock, emplacement, numlot, prixachat, numcom, types, dateexp, datefab, rayon, devise, agent, fournisseur)
    VALUES('$code','$daterecep','$designation', '$categorie', '$forme', '$qtefournie', '$emballage', '$conditionnement', '$qtestock', '$emplacement', '$numlot', '$prixachat', '$numcom', '$type', '$dateexp', '$datefab', '$rayon', '$devise', '$username','$fournisseur')");
            if ($query) { ?>
              <div class="alert alert-success"> Réception faite avec succès</div>
            <?php } else { ?>
              <div class="alert alert-danger">Une erreur est survenue lors de la réception</div>
          <?php }
          } 

         if (isset($_GET['delete'])) {
           $delete = $_GET['delete'];
        $sqldelete = mysqli_query($connect,"DELETE FROM produits_et_materiels_receptionners WHERE idrecep = '$delete'");
         if ($delete) { ?>
      <div class="alert alert-danger">Suppression faite avec succès</div>
         <?php }
         }

          ?>

  <?php if (isset($_POST['modifier_produit'])) {

                                extract($_POST);


                                $designation = strtoupper($designation);
    $query = mysqli_query($connect, "UPDATE produits_et_materiels_receptionners
    SET daterecep='$daterecep', 
    designation='$designation', 
    categorie='$categorie', 
    forme='$forme', 
    qtefournie='$qtefournie', 
    emballage='$emballage', 
    conditionnement='$conditionnement', 
    qtestock='$qtestock', 
    emplacement='$emplacement', 
    numlot='$numlot', 
    prixachat='$prixachat', 
    numcom='$numcom', 
    types='$type', 
    dateexp='$dateexp', 
    devise='$devise', 
    fournisseur='$fournisseur' WHERE idrecep = '$cod'");
    
    if ($query) { ?>
                                    <div class="alert alert-success"> Modification faite avec succès</div>
                                <?php } else { ?>
                                    <div class="alert alert-danger">Une erreur est survenue lors de la modification</div>
                            <?php }
                            } ?>
          

    <div class="col-lg-12">


      <div class="row">

        <div class="col-lg-1"></div>
        <div class="col-xs-5">

          <div class="clearfix">
            <div class="pull-right tableTools-container"></div>
          </div>
          <div class="table-header">
            Entrée produits
          </div>

          <!-- div.table-responsive -->

          <!-- div.dataTables_borderWrap -->
          <div >
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
                  <th>Quantité</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                  <td colspan="3" style="text-align:right;">Total des entrées</td>
                  <td>
                  <?php $sql = mysqli_query($connect,"SELECT SUM(qte) AS totfour FROM malebo_stock WHERE designation='$id'");
                  while($garde = mysqli_fetch_assoc($sql)){
                    echo $totfour = $garde['totfour'];
                  } ?>
                  </td>
                
                </tr>
              </tfoot>

              <tbody>


                <?php
                $sql = mysqli_query($connect, "SELECT *FROM malebo_stock WHERE malebo_stock.designation = '$id' ORDER BY malebo_stock.designation DESC");

                while ($garde = mysqli_fetch_assoc($sql)) { ?>

                  <tr>
              <td class="center">
            <a href="fiche-produit.php?id=<?php echo $garde['id']; ?>"><?php echo $garde['id']; ?></a>
              </td>

                    <td>
                      <a href="fiche-produit.php?id=<?php echo $garde['id']; ?>"><?php echo $garde['date_reception']; ?></a>
                    </td>
                    <td>
                      <a href="fiche-produit.php?id=<?php echo $garde['id']; ?>"><?php echo $garde['designation']; ?></a>
                    </td>

                    
                    <td><?php echo $garde['qte']; ?></td>                     
                    </td>

                    </tr>

                <?php } ?>

                

                













              </tbody>
            </table>



            
          </div>





          
        </div>


        <div class="col-xs-5">

          <div class="clearfix">
            <div class="pull-right tableTools-container"></div>
          </div>
        

          <!-- div.table-responsive -->

          <!-- div.dataTables_borderWrap -->
          <div>
            <table style="margin-left:-55px;" id="dynamic-table" class="table table-striped table-bordered table-hover" name = "dynamic-table">
              <thead>
                <tr>
                  <th class="center">
                    <label class="pos-rel">
                      <input type="checkbox" class="ace" />
                      <span class="lbl"></span>
                    </label>
                  </th>
                  <th bgcolor="red" style="color:white;" colspan="3">Sorties</th>
                  <th colspan="2" bgcolor="blue" style="color:white;">Stock</th>
                </tr>

                <tr>
                  <th class="center">
                    <label class="pos-rel">
                      <input type="checkbox" class="ace" />
                      <span class="lbl"></span>
                    </label>
                  </th>
                  
                  <th>Date sortie</th>
                  <th>Désignation</th>
                  <th >Quantité</th>

                  <th>Quantité restante</th>
                  <th>Date expiration</th>
                </tr>
              </thead>
              <tfoot>
                <tr>
                  
                  <td colspan="3" style="text-align:right;">Total des sorties</td>
                  <td>
                  <?php $sql = mysqli_query($connect,"SELECT SUM(qte_sortie) AS totvente FROM malebo_sortie_prod WHERE designation='$id'");
                  while($garde = mysqli_fetch_assoc($sql)){
                    echo $totvente = $garde['totvente'];
                  } ?>
                  </td>
                 
                  <td colspan="6"><?php echo $reste =  $totfour - $totvente; ?></td>
                </tr>
              </tfoot>

              <tbody>


                <?php
               
                $sql = mysqli_query($connect, "SELECT *FROM malebo_sortie_prod WHERE malebo_sortie_prod.designation = '$id' ORDER BY malebo_sortie_prod.designation DESC");

                while ($garde = mysqli_fetch_assoc($sql)) { ?>
<tr>
<td></td> 
<td><?php echo $garde['date_sortie']; ?></td>                     
                    

                    <td><?php echo $garde['designation']; ?></td>                     
                   
                    <td><?php echo $garde['qte_sortie']; ?></td>                     
                    


                  </tr>

                <?php } ?>

                













              </tbody>
            </table>



            
          </div>


























      </div>
 











</div></div>
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
<?php }
}
?>
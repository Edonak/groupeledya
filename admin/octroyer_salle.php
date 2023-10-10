                <?php include('includes/link.php'); ?>
            <?php include('includes/hea.php'); ?>
             <?php include'db/connectbdd.php';?>
            <div class="main-content">
                <div class="main-content-inner">
                    
                    <div class="page-content">
                        

                        <div class="row">
                            <div class="col-xs-12">
                                
                                <div class="widget-box">
                                    <div class="widget-header widget-header-blue widget-header-flat">
                                        <h4 class="widget-title lighter">Fiche d'identification du client</h4>

                                        <div class="widget-toolbar">
                                            <label>
                                                <small class="green">
                                                    <b>Activation formulaire</b>
                                                </small>

                                                <input id="skip-validation" type="checkbox" class="ace ace-switch ace-switch-4" />
                                                <span class="lbl middle"></span>
                                            </label>
                                        </div>
                                    </div>

                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <div id="fuelux-wizard-container">
                                                <div>
                                                    <ul class="steps">
                                                        <li data-step="1" class="active">
                                                            <span class="step">1</span>
                                                            <span class="title">Identité du client</span>
                                                        </li>

                                                        <li data-step="2">
                                                            <span class="step">2</span>
                                                            <span class="title">Origines</span>
                                                        </li>

                                                        <li data-step="3">
                                                            <span class="step">3</span>
                                                            <span class="title">Chambre</span>
                                                        </li>

                                                        <li data-step="4">
                                                            <span class="step">4</span>
                                                            <span class="title">Finalisation</span>
                                                        </li>
                                                    </ul>
                                                </div>

                                                <hr />

<div class="step-content pos-rel">
<div class="step-pane active" data-step="1">
<h3 class="lighter block green">Entrer les informations du client ici</h3>

 <script src="animation.js" ></script>


       <?php 

       if (isset($_POST['enregistre'])) {
              extract($_POST);


$requete2 = mysqli_query($connection,"SELECT *FROM salles where id='$salle' ");
                                            while ($garde = mysqli_fetch_assoc($requete2)) {


   $prix=$garde['prix']; 
   $nominnation=$garde['nominnation']; 
   $nbr_personne=$garde['nbr_personne']; 

}
    
$datetime1 = date_create($date_event); // Date fixe
$datetime2 = date_create($date_fin); // Date fixe
$interval = date_diff($datetime1, $datetime2);
echo $tempss=$interval->format('%a');
    
$temps=$tempss+1;
                      $motif='location de la salle';              

$date_operation=date('Y-m-d');

$code_facture=mt_rand();
$tot_a_payer=$temps*$prix;


             $insertion = $dbo->prepare("INSERT INTO salle(client,entreprise,telephone,num_carte,type_carte,date_event,type_evenement,salle,prix,nominnation,nbr_personne,id_percepteur,percepteur,code_facture,date_fin,jours,tot_a_payer) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
$insertion->execute(array($client,$entreprise,$telephone,$num_carte,$type_carte,$date_event,$type_evenement,$salle,$prix,$nominnation,$nbr_personne,$id,$username,$code_facture,$date_fin,$temps,$tot_a_payer));



              $insertion = $dbo->prepare("INSERT INTO caisses(code_facture,tot_a_payer,percepteur,id_percepteur,motif) values(?,?,?,?,?)");

              $insertion->execute(array($code_facture,$tot_a_payer,$username,$id,$motif));



              {?> <script type="text/javascript">

                     Swal.fire({
                          position: 'top-end',
                          icon: 'success',
                          title: 'Opération effectuer',
                          showConfirmButton: false,
                          timer: 3500
                   })

                     setInterval(function () {
                            window.location.replace('octroyer_salle.php')


                     }, 3500);
              </script>

       <?php }

}

?>





<form class="form-horizontal" id="sample-form" method="post" >
<div class="form-group has-warning">
<label for="inputWarning" class="col-xs-12 col-sm-3 control-label no-padding-right">Noms du client</label>
<div class="col-xs-12 col-sm-5">
    <span class="block input-icon input-icon-right">
    <input type="text" id="inputWarning" name="client" class="width-100" />
    <i class="ace-icon fa fa-user"></i></span></div>
    <div class="help-block col-xs-12 col-sm-reset inline"> Aide de saisie! </div>
</div>


<div class="form-group has-error">
<label for="inputError" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">Telephone</label>
<div class="col-xs-12 col-sm-5">
<span class="block input-icon input-icon-right">
<input type="text" id="inputError" name="telephone" class="width-100" />
<i class="ace-icon fa fa-user"></i></span></div>
<div class="help-block col-xs-12 col-sm-reset inline"> Aide de saisie! </div>
</div>


<div class="form-group has-error">
<label for="inputError" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">Nom Entreprise</label>
<div class="col-xs-12 col-sm-5">
<span class="block input-icon input-icon-right">
<input type="text" id="inputError" name="entreprise" class="width-100" />
<i class="ace-icon fa fa-user"></i></span></div>
<div class="help-block col-xs-12 col-sm-reset inline"> Aide de saisie! </div>
</div>



<div class="form-group has-error">
<label for="inputError" class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">Numero carte</label>
<div class="col-xs-12 col-sm-5">
<span class="block input-icon input-icon-right">
<input type="text" id="inputError" name="num_carte" class="width-100" />
<i class="ace-icon fa fa-user"></i></span></div>
<div class="help-block col-xs-12 col-sm-reset inline"> Aide de saisie! </div>
</div>


</div>






<div class="step-pane" data-step="2">





<div class="form-group has-success">
<label for="inputSuccess" class="col-xs-12 col-sm-3 control-label no-padding-right">Type carte</label>
<div class="col-xs-12 col-sm-5">
<span class="block input-icon input-icon-right">
<select name="type_carte" id="inputSuccess" class="width-100" />
<option>Type carte</option>
            <option>Type d'identité</option>
            <option>Carte electeur</option>
            <option>Passport</option>
            <option>Permis</option>
        </select>
</span></div>
<div class="help-block col-xs-12 col-sm-reset inline"> Success tip help! </div>
                                                            </div>


<div class="form-group has-success">
<label for="inputSuccess" class="col-xs-12 col-sm-3 control-label no-padding-right">Numéro carte</label>
<div class="col-xs-12 col-sm-5">
<span class="block input-icon input-icon-right">
<input type="text" name="numero_identiter" id="inputSuccess" class="width-100" /></span></div>
<div class="help-block col-xs-12 col-sm-reset inline"> Success tip help! </div>
                                                            </div>

<div class="form-group has-success">
<label for="inputSuccess" class="col-xs-12 col-sm-3 control-label no-padding-right">Date debut</label>
<div class="col-xs-12 col-sm-5">
<span class="block input-icon input-icon-right">
<input type="date" name="date_event" id="inputSuccess" class="width-100" /></span></div>
<div class="help-block col-xs-12 col-sm-reset inline"> Success tip help! </div>
                                                            </div>



<div class="form-group has-success">
<label for="inputSuccess" class="col-xs-12 col-sm-3 control-label no-padding-right">Date fin</label>
<div class="col-xs-12 col-sm-5">
<span class="block input-icon input-icon-right">
<input type="date" name="date_fin" id="inputSuccess" class="width-100" /></span></div>
<div class="help-block col-xs-12 col-sm-reset inline"> Success tip help! </div>
                                                            </div>


<div class="form-group has-success">
<label for="inputSuccess" class="col-xs-12 col-sm-3 control-label no-padding-right">Type Evenement</label>
<div class="col-xs-12 col-sm-5">
<span class="block input-icon input-icon-right">
<select name="type_evenement" id="inputSuccess" class="width-100" />
<option></option>
<option>Conferences</option>
            <option>reunion</option>
            <option>Raconte</option>
            
        </select>
</span></div>
<div class="help-block col-xs-12 col-sm-reset inline"> Success tip help! </div>
                                                            </div>









<div>


                                                            
</div>
</div>

<div class="step-pane" data-step="3">
<div class="form-group has-success">
<label for="inputSuccess" class="col-xs-12 col-sm-3 control-label no-padding-right">Salles</label>
<div class="col-xs-12 col-sm-5">
<span class="block input-icon input-icon-right">
<select name="salle" id="inputSuccess" class="width-100" />
<option></option>
    <?php 

$requete2 = mysqli_query($connection,"SELECT *FROM salles ORDER BY id DESC");
                                            while ($garde = mysqli_fetch_assoc($requete2)) {  ?>


  <option  value="<?php echo $garde['id']; ?>"><?php echo $garde['nominnation'].' '.$garde['prix']; ?>$</option>

<?php }

                                                         ?>
        </select>
</span></div>
<div class="help-block col-xs-12 col-sm-reset inline"> Success tip help! </div>
                                                            </div>
</div>

<div class="step-pane" data-step="4">
<div class="center">
<h3 class="green">Félicitations!</h3>
Votre réservation est sur le point d'être enregistrer!
<hr>
<input type="submit" name="enregistre" value="Cliquer pour valider le formulaire" class="btn btn-danger btn-block">
</div>
</div>
</div>
</div>
</form>
<hr />







<div class="wizard-actions">
<button class="btn btn-prev"><i class="ace-icon fa fa-arrow-left"></i>
Précedent</button>
<button class="btn btn-success btn-next">
Suivant<i class="ace-icon fa fa-arrow-right icon-on-right"></i></button>
</div></div><!-- /.widget-main -->
                                    </div><!-- /.widget-body -->
                                </div>

                                <div id="modal-wizard" class="modal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div id="modal-wizard-container">
                                                <div class="modal-header">
                                                    <ul class="steps">
                                                        <li data-step="1" class="active">
                                                            <span class="step">1</span>
                                                            <span class="title">Identité client</span>
                                                        </li>

                                                        <li data-step="2">
                                                            <span class="step">2</span>
                                                            <span class="title">Origines</span>
                                                        </li>

                                                        <li data-step="3">
                                                            <span class="step">3</span>
                                                            <span class="title">Chambre</span>
                                                        </li>

                                                        <li data-step="4">
                                                            <span class="step">4</span>
                                                            <span class="title">Payement</span>
                                                        </li>
                                                    </ul>
                                                </div>

                                                <div class="modal-body step-content">
                                                    <div class="step-pane active" data-step="1">
                                                        <div class="center">
                                                            <h4 class="blue">Step 1</h4>
                                                        </div>
                                                    </div>

                                                    <div class="step-pane" data-step="2">
                                                        <div class="center">
                                                            <h4 class="blue">Step 2</h4>
                                                        </div>
                                                    </div>

                                                    <div class="step-pane" data-step="3">
                                                        <div class="center">
                                                            <h4 class="blue">Step 3</h4>
                                                        </div>
                                                    </div>

                                                    <div class="step-pane" data-step="4">
                                                        <div class="center">
                                                            <h4 class="blue">Step 4</h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="modal-footer wizard-actions">
                                                <button class="btn btn-sm btn-prev">
                                                    <i class="ace-icon fa fa-arrow-left"></i>
                                                    Prev
                                                </button>

                                                <button class="btn btn-success btn-sm btn-next" data-last="Finish">
                                                    Next
                                                    <i class="ace-icon fa fa-arrow-right icon-on-right"></i>
                                                </button>

                                                <button class="btn btn-danger btn-sm pull-left" data-dismiss="modal">
                                                    <i class="ace-icon fa fa-times"></i>
                                                    Cancel
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- PAGE CONTENT ENDS -->
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
            if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
        </script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- page specific plugin scripts -->
        <script src="assets/js/wizard.min.js"></script>
        <script src="assets/js/jquery.validate.min.js"></script>
        <script src="assets/js/jquery-additional-methods.min.js"></script>
        <script src="assets/js/bootbox.js"></script>
        <script src="assets/js/jquery.maskedinput.min.js"></script>
        <script src="assets/js/select2.min.js"></script>

        <!-- ace scripts -->
        <script src="assets/js/ace-elements.min.js"></script>
        <script src="assets/js/ace.min.js"></script>

        <!-- inline scripts related to this page -->
        <script type="text/javascript">
            jQuery(function($) {
            
                $('[data-rel=tooltip]').tooltip();
            
                $('.select2').css('width','200px').select2({allowClear:true})
                .on('change', function(){
                    $(this).closest('form').validate().element($(this));
                }); 
            
            
                var $validation = false;
                $('#fuelux-wizard-container')
                .ace_wizard({
                    //step: 2 //optional argument. wizard will jump to step "2" at first
                    //buttons: '.wizard-actions:eq(0)'
                })
                .on('actionclicked.fu.wizard' , function(e, info){
                    if(info.step == 1 && $validation) {
                        if(!$('#validation-form').valid()) e.preventDefault();
                    }
                })
                //.on('changed.fu.wizard', function() {
                //})
                .on('finished.fu.wizard', function(e) {
                    bootbox.dialog({
                        message: "Thank you! Your information was successfully saved!", 
                        buttons: {
                            "success" : {
                                "label" : "Valider",
                                "className" : "btn-sm btn-primary"
                            }
                        }
                    });
                }).on('stepclick.fu.wizard', function(e){
                    //e.preventDefault();//this will prevent clicking and selecting steps
                });
            
            
                //jump to a step
                /**
                var wizard = $('#fuelux-wizard-container').data('fu.wizard')
                wizard.currentStep = 3;
                wizard.setState();
                */
            
                //determine selected step
                //wizard.selectedItem().step
            
            
            
                //hide or show the other form which requires validation
                //this is for demo only, you usullay want just one form in your application
                $('#skip-validation').removeAttr('checked').on('click', function(){
                    $validation = this.checked;
                    if(this.checked) {
                        $('#sample-form').hide();
                        $('#validation-form').removeClass('hide');
                    }
                    else {
                        $('#validation-form').addClass('hide');
                        $('#sample-form').show();
                    }
                })
            
            
            
                //documentation : http://docs.jquery.com/Plugins/Validation/validate
            
            
                $.mask.definitions['~']='[+-]';
                $('#phone').mask('(999) 999-9999');
            
                jQuery.validator.addMethod("phone", function (value, element) {
                    return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
                }, "Enter a valid phone number.");
            
                $('#validation-form').validate({
                    errorElement: 'div',
                    errorClass: 'help-block',
                    focusInvalid: false,
                    ignore: "",
                    rules: {
                        email: {
                            required: true,
                            email:true
                        },
                        password: {
                            required: true,
                            minlength: 5
                        },
                        password2: {
                            required: true,
                            minlength: 5,
                            equalTo: "#password"
                        },
                        name: {
                            required: true
                        },
                        phone: {
                            required: true,
                            phone: 'required'
                        },
                        url: {
                            required: true,
                            url: true
                        },
                        comment: {
                            required: true
                        },
                        state: {
                            required: true
                        },
                        platform: {
                            required: true
                        },
                        subscription: {
                            required: true
                        },
                        gender: {
                            required: true,
                        },
                        agree: {
                            required: true,
                        }
                    },
            
                    messages: {
                        email: {
                            required: "Please provide a valid email.",
                            email: "Please provide a valid email."
                        },
                        password: {
                            required: "Please specify a password.",
                            minlength: "Please specify a secure password."
                        },
                        state: "Please choose state",
                        subscription: "Please choose at least one option",
                        gender: "Please choose gender",
                        agree: "Please accept our policy"
                    },
            
            
                    highlight: function (e) {
                        $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
                    },
            
                    success: function (e) {
                        $(e).closest('.form-group').removeClass('has-error');//.addClass('has-info');
                        $(e).remove();
                    },
            
                    errorPlacement: function (error, element) {
                        if(element.is('input[type=checkbox]') || element.is('input[type=radio]')) {
                            var controls = element.closest('div[class*="col-"]');
                            if(controls.find(':checkbox,:radio').length > 1) controls.append(error);
                            else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
                        }
                        else if(element.is('.select2')) {
                            error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
                        }
                        else if(element.is('.chosen-select')) {
                            error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
                        }
                        else error.insertAfter(element.parent());
                    },
            
                    submitHandler: function (form) {
                    },
                    invalidHandler: function (form) {
                    }
                });
            
                
                
                
                $('#modal-wizard-container').ace_wizard();
                $('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');
                
                
                /**
                $('#date').datepicker({autoclose:true}).on('changeDate', function(ev) {
                    $(this).closest('form').validate().element($(this));
                });
                
                $('#mychosen').chosen().on('change', function(ev) {
                    $(this).closest('form').validate().element($(this));
                });
                */
                
                
                $(document).one('ajaxloadstart.page', function(e) {
                    //in ajax mode, remove remaining elements before leaving page
                    $('[class*=select2]').remove();
                });
            })
        </script>
    </body>
</html>

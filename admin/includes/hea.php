<?php 
session_start();

$username= $_SESSION['username'];
$id= $_SESSION['id'];
$service= $_SESSION['service'];
if (empty($id)) {
   header('Location:../index.php');
}

 ?>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 
<body class="skin-2">
		<div id="navbar" class="navbar navbar-default    navbar-collapse       h-navbar ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="vente.php" class="navbar-brand">
						<small>
							
							<?php include('logo/logo.php'); ?>
							<?php include('config/appname.php'); ?>
						</small>
					</a>

					<button class="pull-right navbar-toggle navbar-toggle-img collapsed" type="button" data-toggle="collapse" data-target=".navbar-buttons,.navbar-menu">
						<span class="sr-only">Toggle user menu</span>

						<img src="assets/images/avatars/avatar2.png" alt="<?php include('config/appname.php'); ?>" />
					</button>

					<button class="pull-right navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#sidebar">
						<span class="sr-only">Toggle sidebar</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>

				<div class="navbar-buttons navbar-header pull-right  collapse navbar-collapse" role="navigation">
					<ul class="nav ace-nav">
						<li class="transparent dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-bell icon-animated-bell"></i>
							</a>
							<div class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<div class="tabbable">
									<ul class="nav nav-tabs">
										<li>
											<a data-toggle="tab" href="#navbar-messages">
												Messages
												<span class="badge badge-danger">5</span>
											</a>
										</li>
									</ul><!-- .nav-tabs -->

									<div class="tab-content">
										<div id="navbar-tasks" class="tab-pane in active">
											<ul class="dropdown-menu-right dropdown-navbar dropdown-menu">
												<li class="dropdown-content">
													<ul class="dropdown-menu dropdown-navbar">
														<li>
															<a href="#">
																<div class="clearfix">
																	<span class="pull-left">Software Update</span>
																	<span class="pull-right">65%</span>
																</div>

																<div class="progress progress-mini">
																	<div style="width:65%" class="progress-bar"></div>
																</div>
															</a>
														</li>

														<li>
															<a href="#">
																<div class="clearfix">
																	<span class="pull-left">Hardware Upgrade</span>
																	<span class="pull-right">35%</span>
																</div>

																<div class="progress progress-mini">
																	<div style="width:35%" class="progress-bar progress-bar-danger"></div>
																</div>
															</a>
														</li>

														<li>
															<a href="#">
																<div class="clearfix">
																	<span class="pull-left">Unit Testing</span>
																	<span class="pull-right">15%</span>
																</div>

																<div class="progress progress-mini">
																	<div style="width:15%" class="progress-bar progress-bar-warning"></div>
																</div>
															</a>
														</li>

														<li>
															<a href="#">
																<div class="clearfix">
																	<span class="pull-left">Bug Fixes</span>
																	<span class="pull-right">90%</span>
																</div>

																<div class="progress progress-mini progress-striped active">
																	<div style="width:90%" class="progress-bar progress-bar-success"></div>
																</div>
															</a>
														</li>
													</ul>
												</li>

												<li class="dropdown-footer">
													<a href="#">
														See tasks with details
														<i class="ace-icon fa fa-arrow-right"></i>
													</a>
												</li>
											</ul>
										</div><!-- /.tab-pane -->

										<div id="navbar-messages" class="tab-pane">
											<ul class="dropdown-menu-right dropdown-navbar dropdown-menu">
												<li class="dropdown-content">
													<ul class="dropdown-menu dropdown-navbar">
														<li>
															<a href="#">
																<img src="assets/images/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
																<span class="msg-body">
																	<span class="msg-title">
																		<span class="blue">Alex:</span>
																		Ciao sociis natoque penatibus et auctor ...
																	</span>

																	<span class="msg-time">
																		<i class="ace-icon fa fa-clock-o"></i>
																		<span>a moment ago</span>
																	</span>
																</span>
															</a>
														</li>

														<li>
															<a href="#">
																<img src="assets/images/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
																<span class="msg-body">
																	<span class="msg-title">
																		<span class="blue">Susan:</span>
																		Vestibulum id ligula porta felis euismod ...
																	</span>

																	<span class="msg-time">
																		<i class="ace-icon fa fa-clock-o"></i>
																		<span>20 minutes ago</span>
																	</span>
																</span>
															</a>
														</li>

														<li>
															<a href="#">
																<img src="assets/images/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
																<span class="msg-body">
																	<span class="msg-title">
																		<span class="blue">Bob:</span>
																		Nullam quis risus eget urna mollis ornare ...
																	</span>

																	<span class="msg-time">
																		<i class="ace-icon fa fa-clock-o"></i>
																		<span>3:15 pm</span>
																	</span>
																</span>
															</a>
														</li>

														<li>
															<a href="#">
																<img src="assets/images/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
																<span class="msg-body">
																	<span class="msg-title">
																		<span class="blue">Kate:</span>
																		Ciao sociis natoque eget urna mollis ornare ...
																	</span>

																	<span class="msg-time">
																		<i class="ace-icon fa fa-clock-o"></i>
																		<span>1:33 pm</span>
																	</span>
																</span>
															</a>
														</li>

														<li>
															<a href="#">
																<img src="assets/images/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
																<span class="msg-body">
																	<span class="msg-title">
																		<span class="blue">Fred:</span>
																		Vestibulum id penatibus et auctor  ...
																	</span>

																	<span class="msg-time">
																		<i class="ace-icon fa fa-clock-o"></i>
																		<span>10:09 am</span>
																	</span>
																</span>
															</a>
														</li>
													</ul>
												</li>

												<li class="dropdown-footer">
													<a href="inbox.html">
														See all messages
														<i class="ace-icon fa fa-arrow-right"></i>
													</a>
												</li>
											</ul>
										</div><!-- /.tab-pane -->
									</div><!-- /.tab-content -->
								</div><!-- /.tabbable -->
							</div><!-- /.dropdown-menu -->
						</li>

						<li class="light-blue dropdown-modal user-min">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/images/avatars/avatar2.png" alt="Jason's Photo" />
								<span class="user-info">
									<small>Bienvenue,</small>
									<?php echo $username; ?>
									
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								

								<li class="divider"></li>

								<li>
									<a href="../index.php">
										<i class="ace-icon fa fa-power-off"></i>
										Déconnexion
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>

				<nav role="navigation" class="navbar-menu pull-left collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li>
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								 <strong> Vous etes connecté </strong>
								<?php echo $username; ?>
	  		&nbsp;
								<i class="ace-icon fa fa-angle-down bigger-110"></i>
							</a>
						</li>

						

					
				</nav>
			</div><!-- /.navbar-container -->
		</div>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<div id="sidebar" class="sidebar      h-sidebar                navbar-collapse collapse          ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>



				<ul class="nav nav-list">
					<?php 
if ($service=='DG' or $service=='ADJOIN' or $service=='Reception_AEV' ) { ?>
					<li class="hover">
						<a href="accueil.php">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text">Accueil</span>
						</a>

						<b class="arrow"></b>
					</li>
					<?php }

 ?>
<?php 
if ($service=='ADJOIN' or $service=='Reception_basic') { ?>
					
					<?php }

 ?>
 






<?php 
if ($service=='DG' or $service=='ADJOIN' ) { ?>
					<li class="active open hover">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-"><img src="icones/maintenance_48px.png" style="width:20px;"></i>
							<span class="menu-text">
								 Paramètre 
							</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							


<li class="hover">
                                <a href="produits.php">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Enregistrement produit
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="hover">
                                <a href="appro.php">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Stock produit
                                </a>

                                <b class="arrow"></b>
                            </li>
<?php 
if ($service=='DG') { ?>
	
							<li class="hover">
								<a href="tarif.php">
									<i class="menu-icon fa fa-caret-right"></i>
									Ajouter un tarif
								</a>

								<b class="arrow"></b>
							</li>
<li class="hover">
								<a href="agents.php">
									<i class="menu-icon fa fa-caret-right"></i>
									Ajouter un agent
								</a>

								<b class="arrow"></b>
							</li>
							 <li class="hover">
                                <a href="taux.php">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Actualiser le taux
                                </a>

                                <b class="arrow"></b>
                            </li>
							<?php } ?>
						</ul>
					</li>
					<?php }

 ?>






					<?php 
if ($service=='DG' or $service=='ADJOIN' or $service=='Reception_AEV' or $service=='Reception_basic') { ?>

					<li class="hover">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-product bigger"><img src="icones/client_32.png" style="width:20px;"></i>
							<span class="menu-text">Enregistrement et liste client </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">

							<?php 
if ( $service=='Reception_AEV' ) { ?>
							<li class="hover">
								<a href="fiche_identification_client.php">
									<i class="menu-icon fa fa-caret-right"></i>
									Formulaire client
								</a>

								<b class="arrow"></b>
							</li>



							<?php }

 ?>



							<?php 
if ($service=='DG' or $service=='ADJOIN' or $service=='Reception_AEV' ) { ?>

							<li class="hover">
								<a href="services.php">
									<i class="menu-icon fa fa-caret-right"></i>
									Liste des clients
								</a>

								<b class="arrow"></b>
							</li>
							<?php } ?>
							<?php if ( $service=='Reception_basic') { ?>

							<?php } ?>
	
						<?php if ($service=='DG' or $service=='ADJOIN' or  $service=='Reception_basic') { ?>					
						
							<?php } ?>			
						</ul>
					</li>
<?php } ?>
					<?php 
if ($service=='DG' or $service=='ADJOIN' or $service=='Reception_AEV' or $service=='Reception_basic') { ?>

					<li class="hover">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-product bigger"><img src="icones/icons8_Income_Tax_32.png" style="width:35px;"></i>
							<span class="menu-text"> Abonnement Chambre </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">

							<?php 
if ($service=='Reception_AEV' ) { ?>
							<li class="hover">
								<a href="abonnement.php">
									<i class="menu-icon fa fa-caret-right"></i>
									Abonnement Chambre
								</a>

								<b class="arrow"></b>
							</li>
														<?php }

 ?>
							<?php 
if ($service=='Reception_AEV' OR $service=='DG' ) { ?>
							<li class="hover">
								<a href="abonnement_encours.php">
									<i class="menu-icon fa fa-caret-right"></i>
									Abonnement en cours
								</a>

								<b class="arrow"></b>
							</li>
							<?php }

 ?>
							

							
						</ul>
					</li>
<?php }

 ?>







						
			<?php 
if ($service=='DG' or $service=='ADJOIN' or $service=='Reception_AEV' or $service=='Reception_basic') { ?>

							

<li class="hover">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa- bigger"><img src="icones/box_64px.png" style="width:20px;"></i>
							<span class="menu-text"> vente </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">

							<?php 
if ($service=='DG'or $service=='Reception_AEV' ) { ?>
							<li class="hover">
								<a href="vente.php">
									<i class="menu-icon fa fa-caret-right"></i>
									vente
								</a>

								<b class="arrow"></b>
							</li>
							

							<?php }

 ?>	
						</ul>
					</li>
<?php }

 ?>



			
			<?php 
if ($service=='Reception_AEV' or $service=='Reception_basic') { ?>

							

<li class="hover">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa- bigger"><img src="icones/presence_32.png" style="width:20px;"></i>
							<span class="menu-text"> Presence </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">

							<?php 
if ($service=='Reception_AEV' ) { ?>
							<li class="hover">
								<a href="presence.php">
									<i class="menu-icon fa fa-caret-right"></i>
									liste de presence
								</a>

								<b class="arrow"></b>
							</li>
							

							<?php }

 ?>



							<?php 
if ( $service=='Reception_basic') { ?>
							<li class="hover">
								<a href="presenceBasic.php">
									<i class="menu-icon fa fa-caret-right"></i>
									liste de presence
								</a>

								<b class="arrow"></b>
							</li>
							

							<?php }

 ?>


							


							
						</ul>
					</li>
<?php }

 ?>

					




	<?php 
if ($service=='DG' or $service=='ADJOIN' or $service=='Reception_AEV' or $service=='Reception_basic') { ?>
				





			


  <li class="hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-file-o bigger"></i>
                            <span class="menu-text"> Archives</span>

                            <b class="arrow fa fa-angle-down"></b>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">


														<?php 
if ($service=='DG'or $service=='Reception_basic' ) { ?>
							 

							<?php }

 ?>			


														<?php 
if ($service=='DG'or $service=='Reception_basic' ) { ?>
							
							<?php }

 ?>					
		
														<?php 
if ($service=='DG'or $service=='Reception_AEV' ) { ?>
							<li class="hover">
                                <a href="fiche.php">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Historiques des achats
                                </a>

                                <b class="arrow"></b>
                            </li>

							<?php }

 ?>
 <?php 
 if ($service=='DG'or $service=='Reception_AEV' ) { ?>
							
                           
                              <li class="hover">
                                <a href="archivesAbonnement.php">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Historiques des abonnements
                                </a>

                                <b class="arrow"></b>
                            </li>

							<?php }

 ?>
		







                        </ul>
                    </li>




<?php }

 ?>

	<?php 
if ($service=='DG' or $service=='ADJOIN') { ?>


<li class="hover">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-print bigger"></i>
							<span class="menu-text"> Imprimable</span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="hover">
								<a href="rapport_chambre.php">
									<i class="menu-icon fa fa-caret-right"></i>
									Rapport caisse vente global 
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover">
								<a href="rapport_detailler.php">
									<i class="menu-icon fa fa-caret-right"></i>
									Rapport caisse vente detailé
								</a>

								<b class="arrow"></b>
							</li>
							<li class="hover">
								<a href="rapport_fitness_global.php">
									<i class="menu-icon fa fa-caret-right"></i>
									Rapport chambre global
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hover">
								<a href="rapport_paiement.php">
									<i class="menu-icon fa fa-caret-right"></i>
									Rapport Chambre par Catégories
								</a>

								<b class="arrow"></b>
							</li>
							
						</ul>
					</li>


<?php }

 ?>	
						</ul>
					</li>
				</ul><!-- /.nav-list -->
			</div>
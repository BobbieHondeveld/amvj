<?php /* Smarty version Smarty-3.1.21, created on 2014-11-04 02:33:48
         compiled from "/Users/jevon/Development/Atabix/default/vendor/atabix/atabase/views/atabase/main.tpl" */ ?>
<?php /*%%SmartyHeaderCode:83693483354582cfc5a1037-40726690%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'dd56b51ac38101e957a2ea848fb19c7aa1b380ae' => 
    array (
      0 => '/Users/jevon/Development/Atabix/default/vendor/atabix/atabase/views/atabase/main.tpl',
      1 => 1415063328,
      2 => 'file',
    ),
    '307555655fedb1faeba5677abf8746c034565d45' => 
    array (
      0 => 'views/_mi.tpl',
      1 => 1415064718,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '83693483354582cfc5a1037-40726690',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'menu' => 0,
    'submenu' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21',
  'unifunc' => 'content_54582cfc8dbd87_99479946',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_54582cfc8dbd87_99479946')) {function content_54582cfc8dbd87_99479946($_smarty_tpl) {?><!doctype html>
<!--[if IE 9]><html class="lt-ie10" lang="nl" > <![endif]-->
<html class="no-js" lang="nl">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Primephonic - Management Tool</title>
    <link rel="shortcut icon" href="/static/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/static/admin/css/mi.min.css" />
    
    <!-- Javascript-->

    <?php echo '<script'; ?>
 type="text/javascript" language="javascript" src="/static/admin/js/mi.min.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 type="text/javascript" src="/static/admin/components/jquery-form/jquery.form.js"><?php echo '</script'; ?>
>
		
    
    

    <!-- Ajax Submit -->
    <?php echo '<script'; ?>
 type="text/javascript"> 
    	$(function(){
            $("#mainsearchbox").tokenInput("/admin/global-search", {
			    // Display settings
			    hintText: "Zoeken...",
			    noResultsText: "Geen resultaten gevonden",
			    searchingText: "Zoeken...",
			    deleteText: "&times;",
			    animateDropdown: true,
			    placeholder: null,
			    resultsLimit: null,
			    enableHTML: true,
			    propertyToSearch: "title",
			
			    resultsFormatter: function(item) {
					var html="<li>";
					var icon='search';
					html+='<div class="results fl p10"><img src="/'+icon+'.png" alt="noicon" /></div>';
					html+='<div class="fl">';
					html+='  '+item.title+'<br/>';
					html+='  '+item.subtitle;
					html+='</div>';
					html+='<div class="clear"></div>';
					
					html+="</li>";
					return html;
			    },
			
			    tokenFormatter: function(item) {
			      var string = item[this.propertyToSearch];
			      return "<li><p>" + string + "</p></li>";
			    },
			
			    // Tokenization settings
			    tokenLimit: null,
			    tokenDelimiter: ",",
			    preventDuplicates: false,
			
			    // Behavioral settings
			    allowFreeTagging: false,
			    allowTabOut: false,
			    
			    theme: "",
			    idPrefix: "mainsearch-token-",
			
			    // Callbacks
			    onResult: null,
			    onCachedResult: null,
			    onAdd: function(e) {
				    if(e.url) window.location=e.url;
			    },
			    onFreeTaggingAdd: null,
			    onDelete: null,
			    onReady: null,
			});
    	});

        function succesMessage(msg) {
            $('.success_msg').html(msg);
            $('.success').show().delay(3000).fadeOut(1000)
        } 

        function warningMessage(msg) {
            $('.secondary_msg').html(msg);
            $('.secondary').show().delay(3000).fadeOut(1000)
        } 
 
        function errorMessage(msg) {
            $('.radius_msg').html(msg);
            $('.radius').show().delay(3000).fadeOut(1000)
        } 
        
        function getDateTimeFormat(data){
            var date = new Date(data);
            var datetime =date.getDate() + "/"
                        + (date.getMonth()+1)  + "/" 
                        + date.getFullYear() + " @ "  
                        + ("0"+date.getHours()).slice(-2) + ":"  
                        + ("0"+date.getMinutes()).slice(-2)
            return datetime;
        }
    <?php echo '</script'; ?>
>

</head>
<body  class="dt-example">

<div class="off-canvas-wrap" data-offcanvas>
    <div class="inner-wrap">

        <a class="left-off-canvas-toggle menu-icon" href="#" ><span></span><span></span><span></span></a>

        <!-- Off Canvas Menu -->
        <aside class="left-off-canvas-menu">
            <!-- whatever you want goes here -->
            <ul>
                <li><a href="#">Item 1</a></li>
                <li><a href="#">Item 2</a></li>
                <li><a href="#">Item 3</a></li>
                <li><a href="#">Item 4</a></li>
                <li><a href="#">Item 5</a></li>
                <li><a href="#">Item 6</a></li>
            </ul>
        </aside>

        <!-- Entire body starts here actually -->

        <div class="pageHeader"><!-- So we got our sticky header -->
            <div class="topBar">
				<div class="row fullWidth">

					<div class="small-12 medium-2 columns"> <!-- left column -->
						<div class="logoWrapper left">
							<a class="logo" href="/admin/"></a>
						</div>
					</div>

					<div class="small-12 medium-8 large-7 columns"> <!-- main column -->
						<div class="searchBar-wrapper">
							<input type="text" class="searchbar" id="mainsearchbox">
						</div>
					</div>

					<div class="small-12 medium-2 large-3 columns"> <!-- right column -->
						<div class="userContainer right">

							<a class="button radius right show-for-medium-up" href="/admin/logout">Uitloggen</a>

						</div>
					</div>
				</div>
			</div>

            </div>
        </div> <!-- End of our sticky-icky-icky header -->

       
        <div class="pageContent"> <!-- This is where all the magic happens -->
            <div class="row fullWidth">

                
				<div class="small-12 medium-2 columns leftPanel"> <!-- left column -->

					<nav class="navigation">
						<div id='cssmenu'>
							<ul class="sidenav">
				        		<li class='<?php if ($_smarty_tpl->tpl_vars['menu']->value==1) {?>active<?php }?> has-sub'>
				        			<a href="/admin"><span>Webmaster</span></a>
										<ul class="sidesubnav">
											<li>
												<a href="/admin/website/homepage" class="">Homepage</a>
											</li>
											<!--
											<li>
												<a href="/admin/website/about" class="">About</a>
											</li>					
											
<li class="<?php if ($_smarty_tpl->tpl_vars['submenu']->value==2) {?>active<?php }?>">
												<a href="/admin/menuitems" class="">Menu</a>
											</li>				
											<li class="<?php if ($_smarty_tpl->tpl_vars['submenu']->value==3) {?>active<?php }?>">
												<a href="/admin/news" class="">News</a>
											</li>					
											<li class="<?php if ($_smarty_tpl->tpl_vars['submenu']->value==4) {?>active<?php }?>">
												<a href="/admin/pages" class="">Pages</a>
											</li>					
											<li class="<?php if ($_smarty_tpl->tpl_vars['submenu']->value==9) {?>active<?php }?>">
												<a href="/admin/header-banners" class="">Header Banners</a>
											</li>
											<li class="<?php if ($_smarty_tpl->tpl_vars['submenu']->value==5) {?>active<?php }?>">
												<a href="/admin/slider" class="">Slider</a>
											</li>
											<li class="<?php if ($_smarty_tpl->tpl_vars['submenu']->value==6) {?>active<?php }?>">
							        			<a href="/admin/specials">Specials</a>
							        		</li>
											<li class="<?php if ($_smarty_tpl->tpl_vars['submenu']->value==7) {?>active<?php }?>">
							        			<a href="/admin/series">Series</a>
							        		</li>
											<li class="<?php if ($_smarty_tpl->tpl_vars['submenu']->value==8) {?>active<?php }?>">
							        			<a href="/admin/season-artists">Season Artists</a>
							        		</li>
							        		<li class="<?php if ($_smarty_tpl->tpl_vars['submenu']->value==10) {?>active<?php }?>">
							        			<a href="/admin/seo">SEO</a>
							        		</li>
-->
										</ul>
				        		</li>
				        		<li class='<?php if ($_smarty_tpl->tpl_vars['menu']->value==2) {?>active<?php }?> has-sub'>
				        			<a href='/admin'><span>Finance</span></a>
									<ul>
										<li><a href='/admin/finance/orders/'><span>Orders</span></a></li>					
										<li><a href='/admin/finance/invoices'><span>Invoices</span></a></li>
						        		<li><a href='/admin/finance/pricegroups'><span>Price Groups</span></a></li>
									</ul>
				        		</li>
				        		<li class="<?php if ($_smarty_tpl->tpl_vars['menu']->value==3) {?>active<?php }?>">
				        			<a href="/admin/artists" >Artists</a>
				        		</li>
				        		<li class="<?php if ($_smarty_tpl->tpl_vars['menu']->value==5) {?>active<?php }?> has-sub">
				        			<a href="/admin/albums">Albums</a>
									<ul>
										<li><a href='/admin/albums/'><span>Overview</span></a></li>		
										<li><a href='/admin/albums/add'><span>New album</span></a></li>					
										<li><a href='/admin/albums/ddex'><span>DDEX-import</span></a></li>
									</ul>
				        		</li>
				        		<!--
<li class="<?php if ($_smarty_tpl->tpl_vars['menu']->value==6) {?>active<?php }?>">
				        			<a href="/admin/attributes" >Attributes</a>
				        		</li>
-->
				        		<li class="<?php if ($_smarty_tpl->tpl_vars['menu']->value==8) {?>active<?php }?>">
				        			<a href="/admin/labels">Labels</a>
				        		</li>
				        		<!--
<li class="<?php if ($_smarty_tpl->tpl_vars['menu']->value==4) {?>active<?php }?> has-sub">
				        			<a href="/admin/user/users">Users</a>
									<ul class="sidesubnav">
										<li><a href="/admin/user/users/">Users</a></li>					
										<li><a href="/admin/user/userlevels">User levels</a></li>
									</ul>
				        		</li>
-->
				        		<!--
				        		<li>
				        			<a href="/admin/sales" class="chart<?php if ($_smarty_tpl->tpl_vars['menu']->value==9) {?>active<?php }?>">Sales Reports</a>
									<?php if ($_smarty_tpl->tpl_vars['menu']->value==9) {?>
										<ul class="sidesubnav">
											<li class="<?php if ($_smarty_tpl->tpl_vars['submenu']->value==1) {?>active<?php }?>">
												<a href="/admin/sales">Overview</a>
											</li>	
											<li class="<?php if ($_smarty_tpl->tpl_vars['submenu']->value==1) {?>active<?php }?>">
												<a href="/admin/sales/generate">Reports</a>
											</li>	
										</ul>
									<?php }?>
				        		</li>
-->
								<li class="<?php if ($_smarty_tpl->tpl_vars['menu']->value==7) {?>active<?php }?> has-sub">
									<a href='/admin/news'>News</a>
										<ul class="sidesubnav">
											<li><a href="/admin/news/">News</a></li>					
											<li><a href="/admin/newssubscriptions">News subscriptions</a></li>
										</ul>
								</li>
								<li class="<?php if ($_smarty_tpl->tpl_vars['menu']->value==17) {?>active<?php }?> has-sub">
				        			<a href="/admin/language">Language File Editor</a>
										<ul class="sidesubnav">
											<li><a href="/admin/language/languages" class="">Languages</a></li>					
											<li><a href="/admin/language/categories" class="">Categories</a></li>
											<li><a href="/admin/language/translations" class="">Translations</a></li>
										</ul>
				        		</li>
								<!--
								<li>
									<a href="/admin/permissions" class="clipboard<?php if ($_smarty_tpl->tpl_vars['menu']->value==14) {?>active<?php }?>">Permissions</a>
								</li>
-->
				        	</ul>
						</div>
					</nav>
				</div>
                

                


<div class="small-12 medium-6 large-10 columns mainPanel"> <!-- main column -->

<nav class="breadcrumbs"> 
	<a href="/atabase">Atabase</a> 
	<a href="#" class="current">Dashboard</a>
</nav>

<h1>Atabase Dashboard</h1>


<section class="tabs-example">
	<ul class="tabs" data-tab="">
        <li class="tab-title active"><a href="#panel1-X"><i class="fa fa-info"></i>General</a></li>
        <li class="tab-title"><a href="#panel1-X"><i class="fa fa-database"></i> Database</a></li>
        <li class="tab-title"><a href="#panel1-X"><i class="fa fa-quote-right"></i> Config</a></li>
        <li class="tab-title"><a href="#panel1-4"><i class="fa fa-location-arrow"></i> Routes</a></li>
        <li class="tab-title"><a href="#panel1-5"><i class="fa fa-file-code-o"></i> Static files</a></li>
        <li class="tab-title"><a href="#panel1-X"><i class="fa fa-list-alt"></i> MI</a></li>
    </ul>

	<div class="tabs-content">

		<div class="content tabs" id="panel1-1">
			<h2>
				<i class="fa fa-info right"></i>
				General
			</h2>
			
		</div>

		<div class="content tabs" id="panel1-2">
			<h2>
				<i class="fa fa-info right"></i>
				Database
			</h2>

		</div>

		<div class="content tabs" id="panel1-3">
			<h2>
				<i class="fa fa-info right"></i>
				Config
			</h2>

		</div>

		<div class="content tabs" id="panel1-4">
			<h2>
				<i class="fa fa-location-arrow right"></i>
				Routes
			</h2>

			<?php if ($_smarty_tpl->tpl_vars['routesError']->value) {?>
			<div data-alert class="alert-box warning round">
				<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['routesError']->value, ENT_QUOTES, 'UTF-8');?>

			</div>
			<?php }?>

			<h3>Update routes</h3>

			<a href='/atabase/routes/update' id="update-routes" class="button">Update now</a>

			<?php if (!$_smarty_tpl->tpl_vars['routesError']->value) {?>
			
			Last update <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['routeLast']->value, ENT_QUOTES, 'UTF-8');?>


			<div data-alert class="alert-box success" id="routes-update-succes" style="display: none;">
				Routes are updated.
			</div>
			<div data-alert class="alert-box alert" id="routes-update-unsucces" style="display: none;">
				Something went wrong. Routes aren't updated.
			</div>


			<h3>Current routes</h3>

			<table>
				<thead>
					<tr>
						<th>URL</th>
						<th>Controller</th>
						<th>Method</th>
						<th width="60">Return</th>
					</tr>
				</thead>
				<tbody>
					<?php  $_smarty_tpl->tpl_vars['route'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['route']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['routes']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['route']->key => $_smarty_tpl->tpl_vars['route']->value) {
$_smarty_tpl->tpl_vars['route']->_loop = true;
?>
					<tr>
						<td><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['route']->value->getURL(), ENT_QUOTES, 'UTF-8');?>
</td>
						<td><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['route']->value->getController(), ENT_QUOTES, 'UTF-8');?>
</td>
						<td><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['route']->value->getMethod(), ENT_QUOTES, 'UTF-8');?>
</td>
						<td><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['route']->value->getReturnType(), ENT_QUOTES, 'UTF-8');?>
</td>
					</tr>
					<?php } ?>
				</tbody>
			</table>
			<?php }?>
			
			
			<?php echo '<script'; ?>
 type="text/javascript"> 
			$(function () {

				$("#update-routes").on("click", function () {

					$.post($(this).attr("href"), { }, function (json) {
						if (json.status == 1) {
							$("#routes-update-succes").html(json.msg).show("slow");
						}
						else {
							$("#routes-update-unsucces").html(json.msg).show("slow");
						}

				    }, "json");

					return false;
				});

			});
			<?php echo '</script'; ?>
>
			
		</div>

		<div class="content tabs" id="panel1-5">
			<h2>
				<i class="fa fa-code right"></i>
				Static files
			</h2>
			
			<table>
				<thead>
					<th>File</th>
					<th>Status</th>
					<th width="120">Action</th>
				</thead>
				<tbody>
					<?php  $_smarty_tpl->tpl_vars['staticFile'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['staticFile']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['staticFiles']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['staticFile']->key => $_smarty_tpl->tpl_vars['staticFile']->value) {
$_smarty_tpl->tpl_vars['staticFile']->_loop = true;
?>
					<tr>
						<td><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['staticFile']->value['name'], ENT_QUOTES, 'UTF-8');?>
</td>
						<td><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['staticFile']->value['status'], ENT_QUOTES, 'UTF-8');?>
</td>
						<td>
						<?php if ($_smarty_tpl->tpl_vars['staticFile']->value['status']!="OK") {?>
						<a href='/atabase/staticfile/update?file=<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['staticFile']->value['name'], ENT_QUOTES, 'UTF-8');?>
' class='button update-static-file'>Update</a>
						<?php }?></td>
					</tr>
					<?php } ?>
				</tbody>
			</table>
			
			<?php echo '<script'; ?>
 type="text/javascript"> 
			$(function () {

				$("#update-static-file").on("click", function () {
					var el = $(this);
					$.post($(this).attr("href"), { }, function (json) {
						if (json.status == 1) {

							console.log("static update!")
							//$("#routes-update-succes").html(json.msg).show("slow");
						}
						else {
							console.log("static not update!");
							//$("#routes-update-unsucces").html(json.msg).show("slow");
						}

				    }, "json");

					return false;
				});

			});
			<?php echo '</script'; ?>
>
			
		</div>


		<div class="content tabs" id="panel1-5">
			<h2>
				<i class="fa fa-code right"></i>
				Management Interface
			</h2>

		</div>

	</section>

</div>




                
			</div>
        </div>

        <div class="pageFooter"> <!-- And ofcourse, the footer/admin where it belongs. -->
            <footer class="row fullWidth">
                <div class="large-12 columns">
                    <div class="row">
                        <div class="large-6 columns">
                            <p>&copy; Copyright Atabix Solutions. All rights reserved.</p>
                        </div>
                        <div class="large-6 columns">

                        </div>
                    </div>
                </div>
            </footer>
        </div>

        <!-- close the off-canvas menu -->
        <a class="exit-off-canvas"></a>
    </div>
</div>


</body>
</html>
<?php }} ?>

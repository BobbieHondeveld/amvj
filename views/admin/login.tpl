<!doctype html>
<!--[if IE 9]><html class="lt-ie10" lang="nl" > <![endif]-->
<html class="no-js" lang="nl">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Management Tool - Gassan</title>
    <link rel="stylesheet" href="/static/admin/css/style.css" />
    <script src="/static/admin/components/modernizr/modernizr.js"></script>

    <link rel="stylesheet" href="/static/components/jqueryui/themes/smoothness/jquery-ui.min.css">
	<link rel="stylesheet" type="text/css" href="/datatables/media/css/jquery.dataTables.css">
	<link rel="stylesheet" type="text/css" href="/datatables/extensions/TableTools/css/dataTables.tableTools.css">
	<link rel="stylesheet" type="text/css" href="/datatables/extensions/Editor-1.3.2/css/dataTables.editor.min.css">
	<link rel="stylesheet" type="text/css" href="/datatables/extensions/Responsive/css/dataTables.responsive.css">
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
    {block name="headerCSS"}
    	<style type="text/css" class="init">
            table.dataTable tr td:first-child {
                text-align: center;
            }
         
            table.dataTable tr td:first-child:before {
                content: "\f096"; /* fa-square-o */
                font-family: FontAwesome;
            }
         
            table.dataTable tr.selected td:first-child:before {
                content: "\f046"; /* fa-check-square-o */
                font-family: FontAwesome;
            }
    	</style>
    {/block}
    
    <script type="text/javascript" language="javascript" src="/static/components/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" language="javascript" src="/static/components/jqueryui/jquery-ui.min.js"></script>
    <script type="text/javascript" language="javascript" src="/static/components/jquery-form/jquery.form.js"></script>
    <script type="text/javascript" language="javascript" src="/static/components/jquery-tokeninput/src/jquery.tokeninput.js"></script>

    <script type="text/javascript" language="javascript" src="/datatables/media/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" language="javascript" src="/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" language="javascript" src="/datatables/extensions/Editor-1.3.2/js/dataTables.editor.min.js"></script>
    <script type="text/javascript" language="javascript" src="/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
    <script type="text/javascript" language="javascript" src="/datatables/extensions/ColVis/js/dataTables.colVis.min.js"></script>
    <script type="text/javascript" language="javascript" src="/static/js/datatables/jquery.dataTables.columnFilter.js"></script>
    <script type="text/javascript" language="javascript" src="/static/js/country.js"></script>

    <!-- JQUERY FILE UPLOAD -->
    <!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
    <link rel="stylesheet" href="/static/components/jquery-file-upload/css/jquery.fileupload.css">
    <link rel="stylesheet" href="/static/components/jquery-file-upload/css/jquery.fileupload-ui.css">

    <!-- The basic File Upload plugin -->
    <script src="/static/components/jquery-file-upload/js/vendor/jquery.ui.widget.js"></script>
    <script src="/static/components/jquery-file-upload/js/jquery.iframe-transport.js"></script>
    <script src="/static/components/jquery-file-upload/js/jquery.fileupload.js"></script>

</head>
<body>
 
	{block name="headerJavascript"}{/block}
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
							<a class="logo" href="/admin/login"></a>
						</div>
					</div>

					<div class="small-12 medium-8 large-7 columns"> <!-- main column -->
						<div class="searchBar-wrapper">

						</div>
					</div>

					<div class="small-12 medium-2 large-3 columns"> <!-- right column -->
						<div class="userContainer right">

						</div>
					</div>
				</div>
			</div>

            </div>
        </div> <!-- End of our sticky-icky-icky header -->

        <div class="pageContent"> <!-- This is where all the magic happens -->
            <div class="row fullWidth">

                {block name="pageLeftContent"}
				<div class="small-12 medium-2 columns leftPanel"> <!-- left column -->

					<nav class="navigation">
						<div id='cssmenu'>
						</div>
					</nav>

				</div>
                {/block}
                {block name="pageMainContent"}
                	<div class="small-12 medium-10 large-10 columns mainPanel"> <!-- main column -->

                		<div class="dashboard">
                			<header class="sectionTitle"><h1>LOGIN</h1></header>
                
                            {include file='admin/_alert_messages.tpl'}
                			<div class="row">

                				<div class="small-12 columns">
                                    Log in to access our domain!
                				</div>
                
                                <form action="/admin/ajax/dologin" method="POST" id="loginForm">
                				    <div class="small-12 columns">
                						<div class="row">
                							<div class="large-4 columns">
                								<label>Username</label>
                								<input type="text" name="username" placeholder="username" />
                							</div>
                						</div>
                						<div class="row">
                							<div class="large-4 columns">
                								<label>Password</label>
                								<input type="password" name="password" placeholder="password" />
                							</div>
                						</div>
                						<div class="row">
                							<div class="large-12 columns">
                							    <input type="submit" value="Login" class="button medium" />
                							</div>
                						</div>
                						</div>
                                    </div>
                                </form>
                			</div>
                
                		</div>
                	</div>
                {/block}
			</div>
        </div>
        <script type="text/javascript"> 
        	$(function(){
                $("#loginForm").ajaxForm({
                	dataType:  'json',
                    success: function(json) {
                        if(json.status==1){
                            window.location = '/admin/orders';
                        }else if(json.status==100){
                            warningMessage(json.msg);
                        }else {
                            errorMessage(json.msg);
                        }
                    }
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
        </script>
        
        
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
<script src="/static/components/foundation/js/foundation.min.js"></script>
<script src="/static/admin/js/main.js"></script>
<script src="/static/admin/js/cssmenu.js"></script>

</body>
</html>

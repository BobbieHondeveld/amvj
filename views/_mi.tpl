<!doctype html>
<!--[if IE 9]><html class="lt-ie10" lang="nl" > <![endif]-->
<html class="no-js" lang="nl">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Primephonic - Management Tool</title>
    <link rel="shortcut icon" href="/static/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/static/admin/css/mi.min.css" />
    
    <!-- Javascript-->

    <script type="text/javascript" language="javascript" src="/static/admin/js/mi.min.js"></script>
	<script type="text/javascript" src="/static/admin/components/jquery-form/jquery.form.js"></script>
		
    {block name="headerCSS"}{/block}
    {block name="headerJavascript"}{/block}

    <!-- Ajax Submit -->
    <script type="text/javascript"> 
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
    </script>

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

                {block name="pageLeftContent"}
				<div class="small-12 medium-2 columns leftPanel"> <!-- left column -->

					<nav class="navigation">
						<div id='cssmenu'>
							<ul class="sidenav">
				        		<li class='{if $menu==1}active{/if} has-sub'>
				        			<a href="/admin"><span>Webmaster</span></a>
										<ul class="sidesubnav">
											<li>
												<a href="/admin/website/homepage" class="">Homepage</a>
											</li>
											<!--
											<li>
												<a href="/admin/website/about" class="">About</a>
											</li>					
											
<li class="{if $submenu==2}active{/if}">
												<a href="/admin/menuitems" class="">Menu</a>
											</li>				
											<li class="{if $submenu==3}active{/if}">
												<a href="/admin/news" class="">News</a>
											</li>					
											<li class="{if $submenu==4}active{/if}">
												<a href="/admin/pages" class="">Pages</a>
											</li>					
											<li class="{if $submenu==9}active{/if}">
												<a href="/admin/header-banners" class="">Header Banners</a>
											</li>
											<li class="{if $submenu==5}active{/if}">
												<a href="/admin/slider" class="">Slider</a>
											</li>
											<li class="{if $submenu==6}active{/if}">
							        			<a href="/admin/specials">Specials</a>
							        		</li>
											<li class="{if $submenu==7}active{/if}">
							        			<a href="/admin/series">Series</a>
							        		</li>
											<li class="{if $submenu==8}active{/if}">
							        			<a href="/admin/season-artists">Season Artists</a>
							        		</li>
							        		<li class="{if $submenu==10}active{/if}">
							        			<a href="/admin/seo">SEO</a>
							        		</li>
-->
										</ul>
				        		</li>
				        		<li class='{if $menu==2}active{/if} has-sub'>
				        			<a href='/admin'><span>Finance</span></a>
									<ul>
										<li><a href='/admin/finance/orders/'><span>Orders</span></a></li>					
										<li><a href='/admin/finance/invoices'><span>Invoices</span></a></li>
						        		<li><a href='/admin/finance/pricegroups'><span>Price Groups</span></a></li>
									</ul>
				        		</li>
				        		<li class="{if $menu==3}active{/if}">
				        			<a href="/admin/artists" >Artists</a>
				        		</li>
				        		<li class="{if $menu==5}active{/if} has-sub">
				        			<a href="/admin/albums">Albums</a>
									<ul>
										<li><a href='/admin/albums/'><span>Overview</span></a></li>		
										<li><a href='/admin/albums/add'><span>New album</span></a></li>					
										<li><a href='/admin/albums/ddex'><span>DDEX-import</span></a></li>
									</ul>
				        		</li>
				        		<!--
<li class="{if $menu==6}active{/if}">
				        			<a href="/admin/attributes" >Attributes</a>
				        		</li>
-->
				        		<li class="{if $menu==8}active{/if}">
				        			<a href="/admin/labels">Labels</a>
				        		</li>
				        		<!--
<li class="{if $menu==4}active{/if} has-sub">
				        			<a href="/admin/user/users">Users</a>
									<ul class="sidesubnav">
										<li><a href="/admin/user/users/">Users</a></li>					
										<li><a href="/admin/user/userlevels">User levels</a></li>
									</ul>
				        		</li>
-->
				        		<!--
				        		<li>
				        			<a href="/admin/sales" class="chart{if $menu==9}active{/if}">Sales Reports</a>
									{if $menu==9}
										<ul class="sidesubnav">
											<li class="{if $submenu==1}active{/if}">
												<a href="/admin/sales">Overview</a>
											</li>	
											<li class="{if $submenu==1}active{/if}">
												<a href="/admin/sales/generate">Reports</a>
											</li>	
										</ul>
									{/if}
				        		</li>
-->
								<li class="{if $menu==7}active{/if} has-sub">
									<a href='/admin/news'>News</a>
										<ul class="sidesubnav">
											<li><a href="/admin/news/">News</a></li>					
											<li><a href="/admin/newssubscriptions">News subscriptions</a></li>
										</ul>
								</li>
								<li class="{if $menu==17}active{/if} has-sub">
				        			<a href="/admin/language">Language File Editor</a>
										<ul class="sidesubnav">
											<li><a href="/admin/language/languages" class="">Languages</a></li>					
											<li><a href="/admin/language/categories" class="">Categories</a></li>
											<li><a href="/admin/language/translations" class="">Translations</a></li>
										</ul>
				        		</li>
								<!--
								<li>
									<a href="/admin/permissions" class="clipboard{if $menu==14}active{/if}">Permissions</a>
								</li>
-->
				        	</ul>
						</div>
					</nav>
				</div>
                {/block}

                {block name="pageMainContent"}{/block}

                {block name="pageRightContent"}
    				<div class="small-12 medium-10 large-3 columns rightPanel"> <!-- right column -->
    
    					<header class="sectionTitle"><h2>Additional</h2></header>
    					<div class="panel callout"></div>
    				</div>
                {/block}
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

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Atabix Cloud</title>
    <link rel="stylesheet" href="/static/css/mi.min.css" />
    <link rel="stylesheet" href="//cdn.datatables.net/plug-ins/9dcbecd42ad/integration/foundation/dataTables.foundation.css" />
    {block name="css"}{/block}

    <script src="/static/components/atabix-mi8/js/lib/modernizr.custom.js"></script>
</head>

    <body>
        <div id="st-container" class="st-container">

            <!-- OFF CANVAS NAVIGATION -->
            <nav class="st-menu st-effect-11" id="menu-11">
                <ul>
                    <li><a class="icon icon-cloud"  href="/">Dashboard</a></li>
                    <li><a class="icon icon-clock"  href="/time">Urentool</a></li>
                    <li><a class="icon icon-search" href="/sales">Sales Agent</a></li>
                </ul>
            </nav>

            <div class="st-pusher">
                <div class="st-content">
                    <div class="st-content-inner">

                        <!-- PAGEHEADER -->
                        <div class="pageHeader">
                            <div class="header">
                                <div class="row">
                                    <div class="small-3 columns noPadding">
                                        <div class="logoContainer">
                                            <a class="logo" href="/"></a>
                                        </div>
                                    </div>
                                    <div class="small-9 columns noPadding">
                                        <div class="inner right">
                                            <div id="st-trigger-effects" class="menu-trigger show-for-medium-down right">
                                                <button data-effect="st-effect-11" class="button menu-icon">
                                                    <span></span>
                                                    <span></span>
                                                    <span></span>
                                                </button>
                                            </div>
                                            <div class="search show-for-large-up">
                                                <button class="md-trigger" id="globalSearch" data-modal="globalSearch_modalSearch">
                                                    <i class="fi-magnifying-glass"></i>
                                                </button>
                                            </div>
                                            <div class="headerBlock lastModified show-for-large-up URLifySingle">
                                                <span>Laatst ingevoerde uur:</span>
                                                <p><a href="/time">das dda </a></p>
                                            </div>
                                            <div class="headerBlock user show-for-large-up logoutbutton">
                                                <div class="image">
                                                    <img src="" alt="dads">
                                                </div>
                                                <div class="content">
                                                    <span>Ingelogd als</span>
                                                    <p>Daan Hage</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <nav class="primaryNav">
                                <ul class="menu show-for-large-up">
                                    <li><a class="{if $menu=="dashboard"}active{/if}" href="/">Dashboard</a></li>
{*
                                    <li class="has-subs">
                                        <a class="{if $menu=="time"}active{/if}" href="/time">Urentool</a>
                                        <ul class="submenu">
                                            <div class="inner">
                                                <p class="categoryTitle">Urentool</p>
                                                <ul>
                                                    <li><a href="/time">Tijd schrijven</a></li>
                                                    <li><a href="/time/my-list">Mijn urenoverzicht</a></li>
                                                    <li><a href="/time/check-hours">Uren schrijven controle</a></li>
                                                    <li><a href="/time/month-matrix">Maand matrix</a></li>
                                                </ul>
                                            </div>
                                        </ul>
                                    </li>
                                    <li><a class="{if $menu=="emailbox"}active{/if}" href="/emailbox">E-mail</a></li>
*}
{*
                                    {if $AUTH->addRouteRequired("financer")->validate(true)}
                                        <li class="has-subs">
                                            <a class="{if $menu=="erp"}active{/if}" href="/erp">ERP</a>
                                            <ul class="submenu">
                                                <div class="inner">
                                                    <p class="categoryTitle">ERP</p>
                                                    <ul>
                                                        <li><a href="/erp/clients">Cli&euml;nten</a></li>
                                                        <li><a href="/erp/hrm/employees">Medewerkers</a></li>
                                                        <li><a href="/erp/applications">Applicaties (GIT Manager)</a></li>
                                                        <li><a href="/erp/subscriptions">Abonnementen</a></li>
                                                    </ul>
                                                </div>
                                            </ul>
                                        </li>
                                    {/if}
*}
                                    <li class="has-subs">
                                        <a class="{if $menu=="sales"}active{/if}" href="/sales">Sales Agent</a>
                                        <ul class="submenu">
                                            <div class="inner">
                                                <p class="categoryTitle">Sales</p>
                                                <ul>
                                                    <li><a href="/sales">Dashboard</a></li>
                                                </ul>
                                            </div>
                                        </ul>
                                    </li>
                                    <li><a class="{if $menu=="wiki"}active{/if}" href="/wiki">Wiki</a>
                                </ul>
                            </nav>
                            <div class="searchBar show-for-medium-down">
                                <form id="searchForm">
                                    <i class="fi-magnifying-glass"></i>
                                    <input type="text" id="searchField" autofocus="autofocus" placeholder="Zoeken in cloud..."/>
                                </form>
                            </div>
                        </div>

                        <!-- PAGECONTENT -->
                        <div class="pageContent">
                            <div class="row main">
                                <div id="mainPanel" class="columns {if $hidesidepanel}fullWidth{/if} noPadding">
                                    {block name="content"}{/block}
                                </div>
                                
                                {if !$hidesidepanel}
                                    <div id="sidePanel" class="columns noPadding animated">
                                        <a class="toggleButton" id="toggleSidepanel"></a>
                                        <!-- Side panel starts here -->
                                        <div class="rightPanel">
                                            {block name="rightPanel"}

                                            {/block}
                                        </div>
                                        <!-- Side panel ends here -->
                                    </div>
                                {/if}
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>



        <!-- // Modal windows // -->
        <div class="md-modal md-effect-9 search" id="globalSearch_modalSearch">
            <div class="md-content">
                <div class="inner">
                    <div class="searchBar">
                        <i class="fi-magnifying-glass"></i>
                        <input type="text" id="globalSearch_searchField" class="searchField" placeholder="Search all..." autocomplete="off"  />
                    </div>

                    <div class="searchTitlebar">
                        <div class="leftColumn left">Zoek resultaten</div>
                        <div class="rightColumn left">Preview</div>
                    </div>

                    <div class="searchResults">
                        <div class="leftColumn left">
                            <ul class="menu results" id="globalSearch_resultList"></ul>
                        </div>
                        <div class="rightColumn" id="globalSearch_resultPreview"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="md-overlay"></div>

        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
        <script src="//atabix-cdn.s3.amazonaws.com/v1.0/foundation/foundation.min.js"></script>
        <script src="//atabix-cdn.s3.amazonaws.com/v1.0/datatables/datatables.min.js"></script>

        <script src="/static/js/mi.min.js"></script>
        
        {block name="javascript"}{/block}
    </body>
</html>

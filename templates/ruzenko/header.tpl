<!doctype html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    <link rel="shortcut icon" href="{$WEB_ROOT}/templates/{$template}/img/ruzenko/favicon.png">
    {include file="$template/includes/head.tpl"}
    {$headoutput}
</head>
<!-- NEW 
<body data-phone-cc-input="{$phoneNumberInputStyle}" {if $loginpage eq 1 or $templatefile eq "clientregister"}class="fullpage"{/if}>
    {if $loginpage eq 0 and $templatefile ne "clientregister"}{/if}
-->
<body data-phone-cc-input="{$phoneNumberInputStyle}">
    {$headeroutput}

    <nav class="navbar navbar-expand topbar">
        <div class="container">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item contact">
                    <a href="mailto:radisic00@gmail.com" class="nav-link"><i class="fas fa-comments"></i> support@ruzenko.com</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="cart.php?a=view">
                        <i class="far fa-shopping-cart fa-fw"></i>
                        <span class="badge badge-info">{$cartitemcount}</span>
                        <span class="sr-only">{lang key="carttitle"}</span>
                    </a>
                </li>
                {if $loggedin}
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-bell fa-fw"></i>
                        {if count($clientAlerts) > 0}
                            {count($clientAlerts)}
                            <span class="d-none d-sm-inline">{lang key='notifications'}</span>
                        {/if}
                    </a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-large" aria-labelledby="navbarDropdown">
                        <h6 class="dropdown-header text-center"><i class="fas fa-bullhorn"></i> Alerts Center</h6>
                        {foreach $clientAlerts as $alert}
                        <a class="dropdown-item" href="{$alert->getLink()}">
                            <p class="mb-0">
                                <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                {$alert->getMessage()}
                            </p>
                            {foreachelse}
                                <div class="none">
                                    <p class="mb-0">{lang key='notificationsnone'}</p>
                                </div>
                            {/foreach}
                        </a>
                    </div>
                </li>
                {/if}
            </ul>
        </div>
    </nav>

    <!-- Navbar -->
    <nav id="navbar_top" class="navbar navbar-expand-xl navbar-dark navbar-rade">
        <div class="container">
            <a class="navbar-brand mr-5" href="{$WEB_ROOT}/index.php">
                {if $assetLogoPath}
                    <img src="{$assetLogoPath}" alt="{$companyname}" class="logo-img img-fluid">
                {else}
                    {$companyname}
                {/if}
            </a>
            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="icon-bar top-bar"></span>
                <span class="icon-bar middle-bar"></span>
                <span class="icon-bar bottom-bar"></span>
                <span class="sr-only">Toggle navigation</span>
            </button>

            <div class="collapse navbar-collapse" id="navbar">
                <ul class="navbar-nav mr-auto">
                    {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
                </ul>

                <ul class="navbar-nav ml-auto">
                    {if $loggedin}
                        {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar rightDrop=true}
                    {else}
                    <li><a href="{$WEB_ROOT}/login.php" class="btn btn-sm btn-radisic"><i class="fas fa-user-lock"></i> {lang key='clientareatitle'}</a></li>
                    {/if}
                </ul>
            </div>
        </div>
    </nav>

    {include file="$template/includes/network-issues-notifications.tpl"}
    {if $templatefile == 'homepage'}
    {else if $templatefile == '7-days-to-die'}
    {else if $templatefile == 'ark'}
    {else if $templatefile == 'arma'}
    {else if $templatefile == 'csgo'}
    {else if $templatefile == 'fivem'}
    {else if $templatefile == 'garrys-mod'}
    {else if $templatefile == 'left-4-dead-2'}
    {else if $templatefile == 'minecraft'}
    {else if $templatefile == 'rust'}
    {else if $templatefile == 'terraria'}
    {else if $templatefile == 'unturned'}
    {else if $templatefile == 'valheim'}
    {else if $templatefile == 'game-servers'}
    {else if $templatefile == 'discord-hosting'}
    {else if $templatefile == 'web-hosting'}
    {else if $templatefile == 'vps-hosting'}
    {else if $templatefile == 'teamspeak'}
    {else if $templatefile == 'about-us'}
    {else if $templatefile == 'terms-of-service'}
    {else if $templatefile == 'privacy-policy'}
    {else}
    <div class="jumbotron rade-header">
        <div id="dots-1"></div>
        <div id="dots-2"></div>
        <div id="dots-3"></div>
        <div class="container">
            {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
        </div>
    </div>
    {/if}

    {if $templatefile == 'homepage'}    
    {else if $templatefile == '7-days-to-die'}
    {else if $templatefile == 'ark'}
    {else if $templatefile == 'arma'}
    {else if $templatefile == 'csgo'}
    {else if $templatefile == 'fivem'}
    {else if $templatefile == 'garrys-mod'}
    {else if $templatefile == 'left-4-dead-2'}
    {else if $templatefile == 'minecraft'}
    {else if $templatefile == 'rust'}
    {else if $templatefile == 'terraria'}
    {else if $templatefile == 'unturned'}
    {else if $templatefile == 'valheim'}
    {else if $templatefile == 'game-servers'}
    {else if $templatefile == 'discord-hosting'}
    {else if $templatefile == 'web-hosting'}
    {else if $templatefile == 'vps-hosting'}
    {else if $templatefile == 'teamspeak'}
    {else if $templatefile == 'about-us'}
    {else if $templatefile == 'terms-of-service'}
    {else if $templatefile == 'privacy-policy'}
    {else}
    <section id="main-body">
        <div class="container">
            <div class="row">

            {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                {if $templatefile == 'clientareahome'}
                {else}
                <div class="col-lg-4 col-xl-3">
                    <div class="sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-none d-lg-block sidebar">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                </div>
                {/if}
            {/if}
            {if $templatefile == 'clientareahome'}
            <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-12{/if} primary-content">
            {else}
            <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-8 col-xl-9{else}col-12{/if} primary-content">
            {/if}
    {/if}
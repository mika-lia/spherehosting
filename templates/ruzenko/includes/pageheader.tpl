<div class="pageheader">
	<div class="
		{if $templatefile == '7-days-to-die'}
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
		{else}container{/if}">
		{if $templatefile == 'clientarea'}{/if}
    	<h1 class="{if $templatefile == 'clientareahome'}animate__animated animate__fadeInRightBig{/if}">{$title}{if $desc} <small>{$desc}</small>{/if}</h1>
    	{if $showbreadcrumb}{include file="$template/includes/breadcrumb.tpl"}{/if}
	</div>
</div>

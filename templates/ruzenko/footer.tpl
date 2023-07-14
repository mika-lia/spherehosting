                    </div>

                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-md-none col-md-3 sidebar sidebar-secondary">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                <div class="clearfix"></div>
            </div>
        </div>
    </section>
    <section id="Cta" class="mt-5 py-4">
        <div class="container">
            <div class="row d-flex justify-content-between">
                <div class="col-lg-8 col-md-6">
                    <div>
                        <h1 class="mb-0">Ready to Get Started?</h1>
                        <p class="mb-0">The servers are booted, select your plan and become our latest satisfied client.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 d-flex align-items-center">
                    <div id="cta-btns">
                        <a href="{$WEB_ROOT}/game-servers.php" class="btn btn-primary">View Services</a>
                        <a href="{$WEB_ROOT}/register.php" class="btn btn-default">Create a Account</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="Footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-lg-3 col-md-3">
                            <h4>Products</h4>
                            <ul>
                                <li><a href="{$WEB_ROOT}/csgo.php">CS:GO Hosting</a></li>
                                <li><a href="{$WEB_ROOT}/minecraft.php">Minecraft Hosting</a></li>
                                <li><a href="{$WEB_ROOT}/terraria.php">Terraria Hosting</a></li>
                                <li><a href="{$WEB_ROOT}/web-hosting.php">Web Hosting</a></li>
                                <li><a href="{$WEB_ROOT}/vps-hosting.php">VPS Hosting</a></li>
                                <li><a href="{$WEB_ROOT}/game-servers.php"><i class="fas fa-eye"></i> View All</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <h4>Support</h4>
                            <ul>
                                <li><a href="#">Live Support</a></li>
                                <li><a href="#">Support Discord</a></li>
                                <li><a href="{$WEB_ROOT}/index.php?rp=/knowledgebase">Knowledgebase</a></li>
                                <li><a href="{$WEB_ROOT}/serverstatus.php">Status Page</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <h4>Clients</h4>
                            <ul>
                                <li><a href="{$WEB_ROOT}/login.php">Login</a></li>
                                <li><a href="{$WEB_ROOT}/register.php">Register</a></li>
                                <li><a href="{$WEB_ROOT}/contact.php">Submit a ticket</a></li>
                                <li><a href="#">Invoices</a></li>
                                <li><a href="{$WEB_ROOT}/about-us.php">About us</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <h4>Legal</h4>
                            <ul>
                                <li><a href="{$WEB_ROOT}/terms-of-service.php">Terms of Service</a></li>
                                <li><a href="{$WEB_ROOT}/privacy-policy.php">Privacy Policy</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 text-center">
                    {if $assetLogoPath}
                        <img src="{$assetLogoPath}" alt="{$companyname}" class="logo-img img-fluid">
                    {else}
                        {$companyname}
                    {/if}
                    <p class="copyright my-3">
                        {lang key="copyrightFooterNotice" year=$date_year company=$companyname}
                    </p>
                </div>
            </div>
        </div>
    </section>
    <!-- {lang key="copyrightFooterNotice" year=$date_year company=$companyname} -->
    <div id="fullpage-overlay" class="w-hidden">
        <div class="outer-wrapper">
            <div class="inner-wrapper">
                <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
                <br>
                <span class="msg"></span>
            </div>
        </div>
    </div>

    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">{lang key='close'}</span>
                    </button>
                </div>
                <div class="modal-body">
                    {lang key='loading'}
                </div>
                <div class="modal-footer">
                    <div class="float-left loader">
                        <i class="fas fa-circle-notch fa-spin"></i>
                        {lang key='loading'}
                    </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        {lang key='close'}
                    </button>
                    <button type="button" class="btn btn-primary modal-submit">
                        {lang key='submit'}
                    </button>
                </div>
            </div>
        </div>
    </div>

    <form method="get" action="{$currentpagelinkback}">
        <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>

                        {if $languagechangeenabled && count($locales) > 1}
                            <h5 class="h5 pt-5 pb-3">{lang key='chooselanguage'}</h5>
                            <div class="row item-selector">
                            <input type="hidden" name="language" value="">
                                {foreach $locales as $locale}
                                    <div class="col-4">
                                        <a href="#" class="item{if $language == $locale.language} active{/if}" data-value="{$locale.language}">
                                            {$locale.localisedName}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                        {if !$loggedin && $currencies}
                            <p class="h5 pt-5 pb-3">{lang key='choosecurrency'}</p>
                            <div class="row item-selector">
                                <input type="hidden" name="currency" value="">
                                {foreach $currencies as $selectCurrency}
                                    <div class="col-4">
                                        <a href="#" class="item{if $activeCurrency.id == $selectCurrency.id} active{/if}" data-value="{$selectCurrency.id}">
                                            {$selectCurrency.prefix} {$selectCurrency.code}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-default">{lang key='apply'}</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    {include file="$template/includes/generate-password.tpl"}

    {$footeroutput}
    <script src="{assetPath file='rade.js'}?v={$versionHash}"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init({
            once: true,
        });
    </script>
</body>
</html>

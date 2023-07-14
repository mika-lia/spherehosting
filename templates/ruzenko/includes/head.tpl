<!-- Styling -->
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600&display=swap" rel="stylesheet">
<link href="{assetPath file='all.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='theme.min.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='rade.css'}?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/css/flaticon.css" rel="stylesheet">
{if $templatefile == 'homepage'} 
<link href="{$WEB_ROOT}/templates/{$template}/css/mapsvg.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/css/nanoscroller.css" rel="stylesheet">
{/if}
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
{assetExists file="products.css"}
<link href="{$__assetPath__}" rel="stylesheet">
{/assetExists}
<!-- Animate.css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<script>
    var csrfToken = '{$token}',
        markdownGuide = '{lang key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang key="markdown.saved"}',
        saving = '{lang key="markdown.saving"}',
        whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}",
        requiredText = '{lang key="orderForm.required"}',
        recaptchaSiteKey = "{if $captcha}{$captcha->recaptcha->getSiteKey()}{/if}";
</script>
<script src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>
{if $templatefile == 'about-us'} 
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/owl.carousel.min.js"></script>
{/if}
{if $templatefile == 'homepage'}  
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/owl.carousel.min.js"></script>
<script src="{assetPath file='jquery.mousewheel.min.js'}?v={$versionHash}"></script>
<script src="{assetPath file='jquery.nanoscroller.min.js'}?v={$versionHash}"></script>
<script src="{assetPath file='mapsvg.min.js'}?v={$versionHash}"></script>
{/if}
{if $templatefile == 'homepage'} 
{literal}
    <script type="text/javascript">
    jQuery(document).ready(function(){
    jQuery("#mapsvg").mapSvg({width: 1009.6727,height: 666,lockAspectRatio: false,colors: {baseDefault: "#000000",directory: "#fafafa",status: {},background: "transparent",base: "#212535",disabled: "transparent",stroke: "transaprent",hover: "#2e86de",selected: "#2e86de"},regions: {TR: {id: "TR",'id_no_spaces': "TR",title: "Turkey",fill: "rgba(0,97,242,1)",tooltip: "Turkey, Istanbul",popover: "Turkey, Istanbul",data: {}},CA: {id: "CA",'id_no_spaces': "CA",title: "Canada",fill: "rgba(0,97,242,1)",tooltip: "United States, Canada",popover: "United States, Canada",data: {}},DE: {id: "DE",'id_no_spaces': "DE",title: "Germany",fill: "rgba(0,97,242,1)",tooltip: "Germany, Falkenstein",popover: "Germany, Falkenstein",data: {}},FI: {id: "FI",'id_no_spaces': "FI",title: "Finland",fill: "rgba(0,97,242,1)",tooltip: "Finland, Helsinki",popover: "Finland, Helsinki",data: {}}},viewBox: [0,-0.01849499999997306,1009.6727,666],cursor: "pointer",popovers: {mode: "off",on: false,priority: "local",position: "top",centerOn: false,width: 300,maxWidth: 50,maxHeight: 50,resetViewboxOnClose: true,mobileFullscreen: true},gauge: {on: false,labels: {low: "low",high: "high"},colors: {lowRGB: {r: 0,g: 97,b: 242,a: 1},highRGB: {r: 0,g: 97,b: 242,a: 1},low: "#2e86de",high: "#2e86de",diffRGB: {r: 0,g: 0,b: 0,a: 0}},min: 0,max: false},source: "templates/ruzenko/img/world.svg",title: "Geo-calibrated\\world",responsive: true});
    });
  </script>
{/literal}
{else}
{/if}
{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}

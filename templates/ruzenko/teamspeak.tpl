<div class="products-header teamspeak-h mb-5">
    <div class="container">
        {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=false}
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
    </div>
</div>
<div class="teamspeak-plans">
    <div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="card mb-5">
					<div class="card-body">
                        <h2 class="mb-4">How many Slots?</h2>
                         <input type="range" min="0" max="450" value="0" step="50" class="slider" id="myRange">
					</div>
				</div>
			</div>
            <div class="col-md-4">
				<div class="card mb-5 text-center">
					<div class="card-body">
						<div class="price">
                            <h4><span id="storageValue">32</span> Slots</h4>
							<h4 class="mb-4"><span id="priceValue">1.99</span>&dollar; <span class="month">/ month</span></h4>
							<a href="" id="buyLink" class="btn btn-primary">Order now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="products-faq py-5">
    <div class="container">
        <h1 class="mb-5">Frequently Asked Questions</h1>
        <div id="accordion">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header" id="heading-1">
                            <h5 class="mb-0">
                                <a role="button" data-toggle="collapse" href="#collapse-1" aria-expanded="false" aria-controls="collapse-1">Can I upgrade/downgrade my server?</a>
                            </h5>
                        </div>
                        <div id="collapse-1" class="collapse" data-parent="#accordion" aria-labelledby="heading-1">
                            <div class="card-body">
                                Absolutely! Upgrade/downgrade your server at any time and pay onlt the difference at a prorated amount. Upgrades can be done automatically in the client area.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="heading-2">
                            <h5 class="mb-0">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-2" aria-expanded="false" aria-controls="collapse-2">How to lorem?</a>
                            </h5>
                        </div>
                        <div id="collapse-2" class="collapse" data-parent="#accordion" aria-labelledby="heading-2">
                            <div class="card-body">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto facere placeat dolor tempora dicta! Provident, vero voluptas! Culpa at, dolor repellat tenetur sunt, nobis repudiandae odit veniam, a placeat quasi.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="heading-3">
                            <h5 class="mb-0">
                                <a role="button" data-toggle="collapse" href="#collapse-3" aria-expanded="false" aria-controls="collapse-3">Can I use a Lorem?</a>
                            </h5>
                        </div>
                        <div id="collapse-3" class="collapse" data-parent="#accordion" aria-labelledby="heading-3">
                            <div class="card-body">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto facere placeat dolor tempora dicta! Provident, vero voluptas! Culpa at, dolor repellat tenetur sunt, nobis repudiandae odit veniam, a placeat quasi.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header" id="heading-4">
                            <h5 class="mb-0">
                                <a role="button" data-toggle="collapse" href="#collapse-4" aria-expanded="false" aria-controls="collapse-4">How do I give access to Lorem?</a>
                            </h5>
                        </div>
                        <div id="collapse-4" class="collapse" data-parent="#accordion" aria-labelledby="heading-4">
                            <div class="card-body">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto facere placeat dolor tempora dicta! Provident, vero voluptas! Culpa at, dolor repellat tenetur sunt, nobis repudiandae odit veniam, a placeat quasi.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="heading-5">
                            <h5 class="mb-0">
                                <a role="button" data-toggle="collapse" href="#collapse-5" aria-expanded="false" aria-controls="collapse-5">What happens if all my files get deleted on accident?</a>
                            </h5>
                        </div>
                        <div id="collapse-5" class="collapse" data-parent="#accordion" aria-labelledby="heading-5">
                            <div class="card-body">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto facere placeat dolor tempora dicta! Provident, vero voluptas! Culpa at, dolor repellat tenetur sunt, nobis repudiandae odit veniam, a placeat quasi.
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" id="heading-6">
                            <h5 class="mb-0">
                                <a role="button" data-toggle="collapse" href="#collapse-6" aria-expanded="false" aria-controls="collapse-6">How can I easily move from another hosting company?</a>
                            </h5>
                        </div>
                        <div id="collapse-6" class="collapse" data-parent="#accordion" aria-labelledby="heading-6">
                            <div class="card-body">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto facere placeat dolor tempora dicta! Provident, vero voluptas! Culpa at, dolor repellat tenetur sunt, nobis repudiandae odit veniam, a placeat quasi.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{literal}
<script>
        let storageValue = document.getElementById("storageValue");
        let priceValue = document.getElementById("priceValue");
        let myRange = document.getElementById("myRange");
        let buyLink = document.getElementById("buyLink");

        myRange.oninput = () => {
        switch (myRange.value) {
            case "50":
            // SETTINGS FOR 48 Slots
            storageValue.innerText = "48";
            priceValue.innerText = "2.99";
            buyLink.setAttribute("href", "");
            break;
            case "100":
            // SETTINGS FOR 64 Slots
            storageValue.innerText = "64";
            priceValue.innerText = "3.99";
            buyLink.setAttribute("href", "");
            break;
            case "150":
            // SETTINGS FOR 128 Slots
            storageValue.innerText = "128";
            priceValue.innerText = "4.99";
            buyLink.setAttribute("href", "");
            break;
            case "200":
            // SETTINGS FOR 256 Slots
            storageValue.innerText = "256";
            priceValue.innerText = "5.99";
            buyLink.setAttribute("href", "");
            break;
            case "250":
            // SETTINGS FOR 300 Slots
            storageValue.innerText = "300";
            priceValue.innerText = "6.99";
            buyLink.setAttribute("href", "");
            break;
            case "300":
            // SETTINGS FOR 350 Slots
            storageValue.innerText = "350";
            priceValue.innerText = "7.99";
            buyLink.setAttribute("href", "");
            break;
            case "350":
            // SETTINGS FOR 400 Slots
            storageValue.innerText = "400";
            priceValue.innerText = "8.99";
            buyLink.setAttribute("href", "");
            break;
            case "400":
            // SETTINGS FOR 450 Slots
            storageValue.innerText = "450";
            priceValue.innerText = "9.99";
            buyLink.setAttribute("href", "");
            break;
            case "450":
            // SETTINGS 500 Slots
            storageValue.innerText = "500";
            priceValue.innerText = "10.99";
            buyLink.setAttribute("href", "");
            break;
            default:
            storageValue.innerText = "32"; // default 32 Slots
            priceValue.innerText = "1.99"; // default Price;
            buyLink.setAttribute("href", ""); // default Link
            break;
        }
    };
</script>
{/literal}
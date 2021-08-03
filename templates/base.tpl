<!DOCTYPE html>
<html lang="{$_modx->config.cultureKey == 'ru' ? 'ru' : 'uk'}">
    <head>
        <meta charset="utf-8">
        <base href="{'site_url' | config}">

        {set $title = ($_modx->resource.longtitle ? : $_modx->resource.pagetitle) | notags}
        {set $description = ($_modx->resource.description) | replace :' "':' «' | replace :'"':'»'}
        {set $sitename = ('site_name' | config) | replace :' "':' «' | replace :'"':'»'}
        {set $page = 'site_url' | config ~ $_modx->resource.uri}

        <meta property="og:type" content="website">
        <meta property="og:site_name" content="">
        <meta property="og:title" content="{$title}">
        <meta property="og:description" content="{$description}">
        <meta property="og:url" content="{$page}">
        <meta property="og:locale" content="uk_UA">

        <meta name="twitter:card" content="summary">
        <meta name="twitter:title" content="{$title}">
        <meta name="twitter:description" content="{$description}">
        <meta name="twitter:url" content="{$page}">
        <meta name="twitter:domain" content="{'site_url' | lexicon}">
        <meta name="twitter:site" content="@site_account">
        <meta name="twitter:creator" content="@individual_account">

        <meta name="format-detection" content="telephone=no">

        <title itemprop="headline">{$title}</title>
        <meta itemprop="description" name="description" content="{$description}" />
        <meta name="keywords" content="">

        <link rel="stylesheet" href="assets/template/css/style.min.css">
        <link rel="shortcut icon" href="assets/template/favicon.ico">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        {if $_modx->config.cultureKey == 'ua'}
        <link rel="alternate" href="https://romembra.zeus.blender.team/ru/" hreflang="ru" />
        {else}
        <link rel="alternate" href="https://romembra.zeus.blender.team/" hreflang="uk" />
        {/if}

        <script type="application/ld+json">
        {
        "@context": "https://schema.org",
        "@type": "Organization",
        "url": "{'site_url'|config}",
        "logo": {
            "url": "{'site_url'|config}assets/template/img/icons/logo.svg",
            "width": "110",
            "@context": "http://schema.org",
            "@type": "ImageObject"
        },
        "sameAs": [
            "{'fb' | config}",
            "{'instagram' | config}"
        ]
        }
        </script>

        <script type="application/ld+json">
        {
        "@context": "http://schema.org",
        "@type": "WebPage",
        "name": "{($_modx->resource.longtitle ? : $_modx->resource.pagetitle) | replace: '"': ''}",
        "description": "{$_modx->resource.description | replace: '"': ''}}"
        }
        </script>

        <script type="application/ld+json">
        {
        "@context": "https://schema.org",
        "@type": "LocalBusiness",
        "name": "{'site_name' | config}",
        "image": [
            "{'site_url'|config}assets/template/img/icons/logo.svg"
        ],
        {if $_modx->config.cultureKey == 'ru'}
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "ул. Зоологическая 5а",
            "addressLocality": "Киев",
            "addressRegion": "Киевская область",
            "postalCode": "02000",
            "addressCountry": "UA"
        },
        {else}
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "вул. Зоологічна 5а",
            "addressLocality": "Харків",
            "addressRegion": "Київська область",
            "postalCode": "02000",
            "addressCountry": "UA"
        },
        {/if}
        "geo": {
            "@type": "GeoCoordinates",
            "latitude": 50.4599322,
            "longitude": 30.4580605
        },
        "url": "{'site_url' | config}",
        "telephone": "{$_modx->resource.phone}",
        {* "email":  "mailto:{'email' | config}", *}
        "priceRange": "Грн",
        "openingHoursSpecification": [
        {
            "@type": "OpeningHoursSpecification",
            "dayOfWeek": [
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday"
            ],
            "opens": "09:00",
            "closes": "18:00"
        }
        ]}
        </script>
    </head>
    {block 'main'}

    {/block}
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="assets/template/js/vendors.min.js"></script>
    <script src="assets/template/js/app.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="assets/template/js/js.cookie.min.js"></script>
    {* <script src="assets/template/js/app.min.js"></script> *}
    <style>#jGrowl .af-message-success { display:none !important; }</style>
    <script>
    $(document).on('af_complete', function (event, response) {
        var fid = response.form[0].id;
        if (fid == "orderForm") {
            if (response.success) {
                $("#form ._footer--succes").addClass('_active');
                setTimeout(function () {
                    $("#form ._footer--succes").removeClass('_active');
                }, 5000);
            }
        }
        if (fid == "orderFormPopup") {
            if (response.success) {
                $(".popup_massagename-message-table").removeClass('_active');
                $(".popup_massagename-message-table ._footer--succes").addClass('_active');
                setTimeout(function () {
                    $(".popup_massagename-message-table ._footer--succes").removeClass('_active');
                }, 5000);
            }
        }
        if (fid == "orderFormPopup2") {
            $(".popup_massagename-message").removeClass('_active');
            if (response.success) {
                $(".popup_massagename-message-table ._footer--succes").addClass('_active');
                setTimeout(function () {
                    $(".popup_massagename-message ._footer--succes").removeClass('_active');
                }, 5000);
            }
        }

    });
    $(document).ready(function () {
        if (!Cookies.get('visit')) {
            $('.cookie').addClass('_active');
        }
        $(document).on('click', '.btn-cookie', function () {
            $('.cockie').removeClass('_active');
                setTimeout(function () {
                Cookies.set('visit', 'true', {
                    expires: 7,
                    path: '/',
                });
            });
        });
    });
    </script>
</body>
</html>

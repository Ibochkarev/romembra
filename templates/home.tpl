{extends 'file:templates/base.tpl'}

{block 'main'}
<body class="scroll-block">
    <div class="wrapper">
        <header class="header">
            <div class="header__content">
                <div class="header__logo">
                    <a href="#">
                        <picture>
                            <source srcset="assets/template/img/icons/logo.svg" type="image/webp">
                            <img src="assets/template/img/icons/logo.svg" alt="">
                        </picture>
                    </a>
                </div>
                <div class="icon-menu"><span></span><span></span><span></span></div>
                <a href="tel:{$_modx->resource.phone  | preg_replace : '/[^0-9+]/' : ''}" class="header__tell">{$_modx->resource.phone}</a>
            </div>
        </header>
        <div class="menu__body">
            <ul class="menu__list">
                <li><a class="scroll-to _goto-block" href="#calc">{'menu_calc' | lexicon}</a></li>
                <li><a class="scroll-to _goto" href="#more">{'menu_advantages' | lexicon}</a></li>
                <li><a class="scroll-to _goto" href="#_doc-main">{'menu_certificates' | lexicon}</a></li>
                <li><a class="scroll-to _goto-block" href="#form-block">{'menu_get_price' | lexicon}</a></li>
                <li><a class="scroll-to _goto-block" href="#circle">{'menu_tech_info' | lexicon}</a></li>
                <li><a class="scroll-to _goto-block" href="#footer">{'menu_contacts' | lexicon}</a></li>
            </ul>
            <div class="menu__footer">
                <ul class="lang">
                    {$_modx->runSnippet('!getLocales', [
                        'sortby' => 'id',
                        'sortdir' => 'DESC',
                        'defaultLocale' => 'ua',
                        'tpl' => '@INLINE <li><a href="{$url}">{$name}</a></li>',
                        'currentTpl' => '@INLINE <li><a class="_active">{$name}</a></li>'
                    ])}
                </ul>
                <a href="tel:{$_modx->resource.phone  | preg_replace : '/[^0-9+]/' : ''}" class="menu__tell">{$_modx->resource.phone}</a>
            </div>
        </div>
        <main class="page">
            <div class="page_head">
                <div class="head--wrap">
                    <picture>
                        <source srcset="{$_modx->resource.banner_img}" type="image/webp">
                        <img class="main__ibg" src="{$_modx->resource.banner_img}" alt="">
                    </picture>
                    <h1 class="head--wrap__header"{$_modx->resource.banner_text}</h1>
                    <div class="head--wrap__partner">
                        <div class="wrap--partner__item">
                            <picture>
                                <img src="{$_modx->resource.banner_partner_1}" alt="">
                            </picture>
                        </div>
                        <div class="wrap--partner__item">
                            <picture>
                                <img src="{$_modx->resource.banner_partner_2}" alt="">
                            </picture>
                        </div>
                    </div>
                    <button class="main__btn"> {'btn_get_price' | lexicon}</button>
                </div>
            </div>
            <section class="calc _tabs" >
                <div class="calc__wrap">
                    <h2 class="calc__head">{$_modx->resource.calc_title}</h2>
                    <div class="calc__main">
                        <div class="rememba_img">
                            <picture>
                                <source srcset="assets/template/img/main/promp4.webp" type="image/webp">
                                <img src="assets/template/img/main/promp4.png" alt="">
                            </picture>
                        </div>
                        <div class="calc__main--wrap">
                            <button class="calc__btn _tabs-item">4”</button>
                            <button class="calc__btn _tabs-item">8”</button>
                        </div>
                        <div class="rememba_img">
                            <picture>
                                <source srcset="assets/template/img/main/promp8.webp" type="image/webp">
                                <img src="assets/template/img/main/promp8.png" alt="">
                            </picture>
                        </div>
                    </div>
                    <div class="wraper__tabov  _tabs-block _active">
                        <div class="wraper__tabov--select">
                            <div class="select--wraper">
                                <h3 class="select--head">{'title_vendor' | lexicon}</h3>
                                <select name="form[1]" class="form">
                                    <option value="zero"></option>
                                    {'!Localizator' | snippet : [
                                        'parents' => 3,
                                        'limit' => 0,
                                        'element' => 'pdoResources',
                                        'sortby' => 'menuindex',
                                        'sortdir' => 'ASC',
                                        'templates' => 2,
                                        'tpl' => '@INLINE <option value="{$alias}">{$pagetitle}</option>'
                                    ]}
                                </select>
                            </div>
                            <div class="select--wraper ">
                                <h3 class="select--head">{'title_model' | lexicon}</h3>
                                <select name="form[2]" class="form">
                                    <option value="zero"></option>
                                    {*'!Localizator' | snippet : [
                                        'parents' => 3,
                                        'limit' => 0,
                                        'element' => 'pdoResources',
                                        'sortby' => 'menuindex',
                                        'sortdir' => 'DESC',
                                        'templates' => 3,
                                        'tpl' => '@INLINE <option value="{$alias}" data-vendor="{$parent_obj.alias}">{$pagetitle}</option>'
                                    ]*}
                                </select>
                            </div>
                            <script>
                            const models = [
                                {'!Localizator' | snippet : [
                                    'parents' => '3, 12',
                                    'limit' => 0,
                                    'element' => 'pdoResources',
                                    'sortby' => 'menuindex',
                                    'sortdir' => 'ASC',
                                    'templates' => 3,
                                    'tpl' => '@INLINE
                                        {set $parent_resource = $parent | resource}
                                        {set $type_resource = $parent_resource.parent | resource}
                                        ["{$parent_resource.alias}", "{$alias}", "{$pagetitle}", "{$type_resource.pagetitle}"],',
                                ]}
                            ];
                            </script>
                        </div>
                        <h3 class="calc__head--mobile">{'calc_analog_title' | lexicon}</h3>
                        <h3 class="calc__head--mobile">{'calc_comparative_title' | lexicon}</h3>
                        <div class="_mobile--more">{'title_show' | lexicon}</div>
                        <div class="calc--wraper scroll-block">
                            {'!pdoResources' | snippet : [
                                'parents' => 3,
                                'depth' => 2,
                                'limit' => 0,
                                'includeTVs' => 'model_characteristics',
                                'tvPrefix' => '',
                                'templates' => 3,
                                'tpl' => '@FILE chunks/model_item.tpl'
                            ]}
                        </div>
                    </div>
                    <div class="wraper__tabov  _tabs-block">
                        <div class="wraper__tabov--select">
                            <div class="select--wraper">
                                <h3 class="select--head">{'title_vendor' | lexicon}</h3>
                                <select name="form[1]" class="form">
                                    <option value="zero"></option>
                                    {'!Localizator' | snippet : [
                                        'parents' => 12,
                                        'limit' => 0,
                                        'element' => 'pdoResources',
                                        'sortby' => 'menuindex',
                                        'sortdir' => 'ASC',
                                        'templates' => 2,
                                        'tpl' => '@INLINE <option value="{$alias}">{$pagetitle}</option>'
                                    ]}>
                                </select>
                            </div>
                            <div class="select--wraper ">
                                <h3 class="select--head">{'title_model' | lexicon}</h3>
                                <select name="form[2]" class="form">
                                    <option value="zero"></option>
                                    {* {'!Localizator' | snippet : [
                                        'parents' => 12,
                                        'limit' => 0,
                                        'element' => 'pdoResources',
                                        'sortby' => 'menuindex',
                                        'sortdir' => 'DESC',
                                        'templates' => 3,
                                        'tpl' => '@INLINE <option value="{$alias}">{$pagetitle}</option>'
                                    ]} *}
                                </select>
                            </div>
                        </div>
                        <h3 class="calc__head--mobile">{'calc_analog_title' | lexicon}</h3>
                        <h3 class="calc__head--mobile">{'calc_comparative_title' | lexicon}</h3>
                        <div class="_mobile--more">{'title_show' | lexicon}</div>
                        <div class="calc--wraper scroll-block">
                            {'!pdoResources' | snippet : [
                                'parents' => 12,
                                'depth' => 2,
                                'limit' => 0,
                                'includeTVs' => 'model_characteristics',
                                'tvPrefix' => '',
                                'templates' => 3,
                                'tpl' => '@FILE chunks/model_item.tpl'
                            ]}
                        </div>
                    </div>
                </div>
            </section>
            <section class="more">
                <div class="calc__wrap">
                    <h2 class="calc__head">{$_modx->resource.benefits_title}</h2>
                    <div class="more__wraper">
                        <div class="more__wraper">
                            <div class="more__wraper--top">

                            {set $items = $_modx->resource.benefits_list | fromJSON}
                            {foreach $items as $idx => $item}
                            {set $image = 'assets/media/' ~ $item.image}
                                <div class="more__item">
                                    <div class="more__img _ibg">
                                        <picture>
                                            <img src="{$image}" alt="">
                                        </picture>
                                    </div>
                                    <p>{$item.text}</p>
                                </div>
                            {if $idx == 2}
                            </div>
                            <div class="more__wraper--bottom">
                            {/if}
                            {/foreach}
                            </div>
                        </div>
                        <div class="more_btn">
                            <a href="#">
                                <span class="_active">
                                    {'title_more' | lexicon}
                                </span>
                                <span>
                                    {'title_back' | lexicon}
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <section class="circle">
                <div class="circle__wraper">
                    <h2 class="calc__head">{$_modx->resource.tech_title}</h2>
                    <div class="circle__main">
                        <div class="circle__item _left-top">
                            <p>{$_modx->resource.tech_download_title_1}</p>
                            <a class="dowland-doc" href="{$_modx->resource.tech_download_file_1}" download></a>
                        </div>
                        <div class="circle__item _right-top">
                            <p>{$_modx->resource.tech_download_title_2}</p>
                            <a class="dowland-doc" href="{$_modx->resource.tech_download_file_2}" download></a>
                        </div>
                        <div class="circle__item _right-bottom">
                            <p>{$_modx->resource.tech_download_title_3}</p>
                            <a class="dowland-doc" href="{$_modx->resource.tech_download_file_3}" download></a>
                        </div>
                        <div class="circle__center">
                            <picture>
                                <source srcset="assets/template/img/tech/main.webp" type="image/webp">
                                <img src="assets/template/img/tech/main.png" alt="">
                            </picture>
                        </div>
                    </div>
                </div>
                <div class="item_decoretion"></div>
            </section>
            <section class="tabs-section">
                <h2 class="calc__head">{$_modx->resource.popular_title}</h2>
                <div class="tabs__wraper _tabs">
                    <div class="tabs__points">

                        {set $items = $_modx->resource.popular_list | fromJSON}
                        {foreach $items as $idx => $item}
                        <div class="tab--point _tabs-item{if $idx == 0} _active{/if}">{$item.title}</div>
                        {/foreach}

                    </div>
                    <div class="tabs__values">

                        {set $items = $_modx->resource.popular_list | fromJSON}
                        {foreach $items as $idx => $item}
                        {set $image = 'assets/media/' ~ $item.image}
                        <div class="tab__value _tabs-block{if $idx == 0} _active{/if}">
                            <p>{$item.text}</p>
                            <picture>
                                <source srcset="{$image}" type="image/webp">
                                <img src="{$image}" alt="">
                            </picture>
                        </div>
                        {/foreach}

                    </div>
                </div>
            </section>
            <section class="tabs-section _doc-main">
                <h2 class="calc__head">{$_modx->resource.certificats_title}</h2>
                <div class="doc_wrap ">

                    {set $items = $_modx->resource.certificats_list | fromJSON}
                    {foreach $items as $item}
                    {set $image = 'assets/media/' ~ $item.image}
                    <div class="doc_block">
                        <picture>
                            <source srcset="{$image}" type="image/webp">
                            <img src="{$image}" alt="{$item.text}">
                        </picture>
                    </div>
                    {/foreach}

                </div>
            </section>
            <section class="form-block" id="form" >
                <h2 class="calc__head">Оставить заявку</h2>
                <h3 class="form_subtitle">Чтобы узнать наличие на складе и цену мембраны</h3>
                <form action="#" class="form_footer">
                    <input type="text" class="input _reg" required placeholder="Имя">
                    <input type="text" class="input _reg _phone" id="phone" required placeholder="+38 (---) --- -- --">
                    <input type="email"  class="input _reg" required placeholder="e-mail">
                    <div class="footer_form">
                        <button class="btn-footer" type="submit">Отправить</button>
                        <label class="checkbox">
                            <input id="formAgreement" type="checkbox" name="agreement" class="checkbox__input _req">

                            <p class="checkbox__text  checkbox__header">ПОЛУЧИТЬ ПРАЙС-ЛИСТ</p>
                        </label>
                    </div>
                </form>
                <section class="_footer--succes">
                    <h2 class="calc__head">Прайс отправлен</h2>
                    <h3 class="sub__success">Нашли мембраны существенно дешевле?</h3>
                    <p>Мы официальные импортеры мембран TCK (CSM) и TORAY в Украине.</p>
                    <p>Узнайте по номеру модели, Вы нашли оригинал или подделку.</p>
                </section>
            </section>
        </main>
        <footer class="footer">
            <div class="footer__content">
                <div class="footer__first">
                    <div class="footer__logo">
                        <picture>
                            <source srcset="assets/template/img/icons/logo.svg" type="image/webp">
                            <img src="assets/template/img/icons/logo.svg" alt="">
                        </picture>
                    </div>
                    <div class="footer__social">
                        <a href="{$_modx->resource.fb}" class="footer__item _face" rel="nofollow" target="_blank"></a>
                        <a href="{$_modx->resource.instagram}" class="footer__item _insta" rel="nofollow" target="_blank"></a>
                    </div>
                    <p class="politica__footer">{'title_policy' | lexicon}</p>
                </div>
                <div class="footer__second">
                    <div class="footer__arrow"></div>
                    <p class="politica__footer">© {'' | date : 'Y'} {'title_rights' | lexicon}</p>
                </div>
                <div class="footer__third">
                    <h4 class="footer__third--head">{$_modx->resource.contacts_title}</h4>
                    <a href="tel:{$_modx->resource.phone  | preg_replace : '/[^0-9+]/' : ''}" class="footer__third--item">{$_modx->resource.phone}</a>
                    <p class="footer__third--item">{$_modx->resource.city}</p>
                    <p class="footer__third--item">{$_modx->resource.street}</p>
                    <p class="footer__third--item">{$_modx->resource.work_clock}</p>
                </div>
            </div>
        </footer>
        <div class="cookie">
            <div class="cookie__left">
                <p>{$_modx->resource.cookie_text}</p>
                <br>
                <p class="politica__footer">{'title_policy' | lexicon}</p>
            </div>
            <button class="btn-cookie">{'btn_accept' | lexicon}</button>
        </div>
    </div>
    <div class="popup popup_popup">
        <div class="popup__content">
            <div class="popup__body">
                <div class="popup__close"></div>
                <h1>{'title_policy' | lexicon}</h1>
                {$_modx->resource.text_policy}
            </div>
        </div>
    </div>
    <div class="popup popup_massagename-message">
        <div class="popup__content">

            <div class="popup__body">
                <section class="_footer--succes">
                    <h2 class="calc__head">Прайс отправлен</h2>
                    <h3 class="sub__success">Нашли мембраны существенно дешевле?</h3>
                    <p>Мы официальные импортеры мембран TCK (CSM) и TORAY в Украине.</p>
                    <p>Узнайте по номеру модели, Вы нашли оригинал или подделку.</p>
                </section>
                <div class="popup__close"></div>
                <form action="#" class="form_footer">
                    <input type="text" class="input _reg" required placeholder="Имя">
                    <input type="text" class="input _reg _phone"  required placeholder="+38 (---) --- -- --">
                    <input type="email"  class="input _reg" required placeholder="e-mail">
                    <div class="footer_form">
                        <button class="btn-footer" type="submit">Отправить</button>
                        <label class="checkbox">
                            <input id="formAgreement" type="checkbox" name="agreement" class="checkbox__input _req">

                            <p class="checkbox__text  checkbox__header">{'btn_get_price' | lexicon}</p>
                        </label>
                    </div>
                </form>
            </div>
        </div>
    </div>
{/block}

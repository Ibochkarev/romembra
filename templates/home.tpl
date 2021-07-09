{extends 'file:templates/base.tpl'}

{block 'main'}
<body class="scroll-block">
    <div class="wrapper">
        <header class="header">
            <div class="header__content">
                <div class="header__logo">
                    <a href="#">
                        <picture><source srcset="img/icons/logo.svg" type="image/webp"><img src="img/icons/logo.svg" alt=""></picture>
                    </a>
                </div>
                <div class="icon-menu"><span></span><span></span><span></span></div>
                <a href="tel:+380674837563" class="header__tell">+38 067 483 75 63</a>
            </div>
        </header>
        <div class="menu__body">
            <ul class="menu__list">
                <li><a class="scroll-to _goto-block" href="#calc">Подбор мембран ОО</a></li>
                <li><a class="scroll-to _goto" href="#more">Преимущества TORAY</a></li>
                <li><a class="scroll-to _goto" href="#_doc-main">Сертификаты</a></li>
                <li><a class="scroll-to _goto-block" href="#form-block">Получить прайс-лист</a></li>
                <li><a class="scroll-to _goto-block" href="#circle">Тех. информация</a></li>
                <li><a class="scroll-to _goto-block" href="#footer">Контакты</a></li>
            </ul>
            <div class="menu__footer">
                <ul class="lang">
                    <li><a href="#" class="_active">РУС</a></li>
                    <li><a href="#">УКР</a></li>
                </ul>
                <a href="tel:+380674837563" class="menu__tell">+38 067 483 75 63</a>
            </div>
        </div>
        <main class="page">
            <div class="page_head">
                <div class="head--wrap">
                    <picture><source srcset="img/main/main.webp" type="image/webp"><img class="main__ibg" src="img/main/main.png" alt=""></picture>
                    <h1 class="head--wrap__header">Официальный импортер <br> промышленных мембран </h1>
                    <div class="head--wrap__partner">
                        <div class="wrap--partner__item">
                            <picture><source srcset="img/partner/toray.svg" type="image/webp"><img src="img/partner/toray.svg" alt="#"></picture>
                        </div>
                        <div class="wrap--partner__item">
                            <picture><source srcset="img/partner/csm.svg" type="image/webp"><img src="img/partner/csm.svg" alt="#"></picture>
                        </div>
                    </div>
                    <button class="main__btn"> Получить прайс-лист</button>
                </div>
            </div>
        <section class="calc" >
            <div class="calc__wrap">
                <h2 class="calc__head">КАЛЬКУЛЯТОР ПОДБОРА МЕМБРАН ОБРАТНОГО ОСМОСА</h2>
                <div class="calc__main">
                    <div class="rememba_img">
                        <picture><source srcset="img/main/promp4.webp" type="image/webp"><img src="img/main/promp4.png" alt=""></picture>
                    </div>
                    <div class="calc__main--wrap">
                        <button class="calc__btn">4”</button>
                        <button class="calc__btn">8”</button>
                        <div class="select--wraper">
                            <h3 class="select--head">Производитель</h3>
                            <select name="form[1]" class="form">
                                <option value="zero"></option>
                                <option value="torey">torey</option>
                                <option value="CSM/Saehan/TCK">CSM/Saehan/TCK</option>
                                <option value="DowFilmtec">Dow Filmtec</option>
                                <option value="GE">GE</option>
                                <option value="Vontron">Vontron</option>
                            </select>
                        </div>
                        <div class="select--wraper ">
                            <h3 class="select--head">Модель</h3>
                            <select name="form[2]" class="form">
                                <option value="zero"></option>
                                <option value="1">Пункт №1</option>
                                <option value="2">Пункт №2</option>
                                <option value="3">Пункт №3</option>
                                <option value="4">Пункт №4</option>
                                <option value="5">Пункт №5</option>
                                <option value="6">Пункт №6</option>
                                <option value="7">Пункт №7</option>
                            </select>
                        </div>
                    </div>
                    <div class="rememba_img">
                        <picture><source srcset="img/main/promp8.webp" type="image/webp"><img src="img/main/promp8.png" alt=""></picture>
                    </div>
                </div>
                <h3 class="calc__head--mobile">АНАЛОГИ ДЛЯ ВЫБРАННОЙ МЕМБРАНЫ. </h3>
                <h3 class="calc__head--mobile">СРАВНИТЕЛЬНЫЕ ХАРАКТЕРИСТИКИ</h3>
                <div class="_mobile--more">Показать</div>
                <div class="calc--wraper scroll-block">
                    <table class="_calc__table">
                        <tr class="first_tr">
                            <td>Название и модель</td>
                            <td>Производитель
                                м3/день</td>
                            <td>Производитель</td>
                            <td>Рабочее
                                давление,
                                БАР</td>
                            <td>Толщина сепарирующей сетки, мил</td>
                            <td>Концентрация солей в исходной воде для тестовых испытаний, мг/л NaCl</td>
                        </tr>
                        <tr>
                            <td class="hit"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
        </section>
        <section class="more">
            <div class="calc__wrap">
                <h2 class="calc__head">ПРЕИМУЩЕСТВА МЕМБРАН TORAY</h2>
                <div class="more__wraper">
                    <div class="more__wraper">
                        <div class="more__wraper--top">
                            <div class="more__item">
                                <div class="more__img _ibg">
                                    <picture><source srcset="img/more/1.svg" type="image/webp"><img src="img/more/1.svg" alt="#"></picture>
                                </div>
                                <p>Широкий ассортимент мембранных элементов для задач любой сложности.</p>
                            </div>
                            <div class="more__item">
                                <div class="more__img _ibg">
                                    <picture><source srcset="img/more/2.svg" type="image/webp"><img src="img/more/2.svg" alt="#"></picture>
                                </div>
                                <p>Широкий ассортимент мембранных элементов для задач любой сложности.</p>
                            </div>
                            <div class="more__item">
                                <div class="more__img _ibg">
                                    <picture><source srcset="img/more/3.svg" type="image/webp"><img src="img/more/3.svg" alt="#"></picture>
                                </div>
                                <p>Широкий ассортимент мембранных элементов для задач любой сложности.</p>
                            </div>
                        </div>
                        <div class="more__wraper--bottom">
                            <div class="more__item">
                                <div class="more__img _ibg">
                                    <picture><source srcset="img/more/1.svg" type="image/webp"><img src="img/more/1.svg" alt="#"></picture>
                                </div>
                                <p>Широкий ассортимент мембранных элементов для задач любой сложности.</p>
                            </div>
                            <div class="more__item">
                                <div class="more__img _ibg">
                                    <picture><source srcset="img/more/2.svg" type="image/webp"><img src="img/more/2.svg" alt="#"></picture>
                                </div>
                                <p>Широкий ассортимент мембранных элементов для задач любой сложности.</p>
                            </div>
                            <div class="more__item">
                                <div class="more__img _ibg">
                                    <picture><source srcset="img/more/3.svg" type="image/webp"><img src="img/more/3.svg" alt="#"></picture>
                                </div>
                                <p>Широкий ассортимент мембранных элементов для задач любой сложности.</p>
                            </div>
                            <div class="more__item">
                                <div class="more__img _ibg">
                                    <picture><source srcset="img/more/1.svg" type="image/webp"><img src="img/more/1.svg" alt="#"></picture>
                                </div>
                                <p>Широкий ассортимент мембранных элементов для задач любой сложности.</p>
                            </div>
                            <div class="more__item">
                                <div class="more__img _ibg">
                                    <picture><source srcset="img/more/2.svg" type="image/webp"><img src="img/more/2.svg" alt="#"></picture>
                                </div>
                                <p>Широкий ассортимент мембранных элементов для задач любой сложности.</p>
                            </div>
                            <div class="more__item">
                                <div class="more__img _ibg">
                                    <picture><source srcset="img/more/3.svg" type="image/webp"><img src="img/more/3.svg" alt="#"></picture>
                                </div>
                                <p>Широкий ассортимент мембранных элементов для задач любой сложности.</p>
                            </div>
                            <div class="more__item">
                                <div class="more__img _ibg">
                                    <picture><source srcset="img/more/1.svg" type="image/webp"><img src="img/more/1.svg" alt="#"></picture>
                                </div>
                                <p>Широкий ассортимент мембранных элементов для задач любой сложности.</p>
                            </div>
                            <div class="more__item">
                                <div class="more__img _ibg">
                                    <picture><source srcset="img/more/2.svg" type="image/webp"><img src="img/more/2.svg" alt="#"></picture>
                                </div>
                                <p>Широкий ассортимент мембранных элементов для задач любой сложности.</p>
                            </div>
                            <div class="more__item">
                                <div class="more__img _ibg">
                                    <picture><source srcset="img/more/3.svg" type="image/webp"><img src="img/more/3.svg" alt="#"></picture>
                                </div>
                                <p>Широкий ассортимент мембранных элементов для задач любой сложности.</p>
                            </div>
                        </div>
                    </div>
                    <div class="more_btn">
                        <a href="#">
                            <span class="_active">
                                БОЛЬШЕ...
                            </span>
                            <span>
                                НАЗАД...
                            </span>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <section class="circle">
            <div class="circle__wraper">
                <h2 class="calc__head">ТЕХНИЧЕСКАЯ ИНФОРМАЦИЯ</h2>
                <div class="circle__main">
                    <div class="circle__item _left-top">
                        <p><span>Скачать </span> листы продукта на <br> мембраны <b> CSM</b></p>
                        <a class="dowland-doc" href="#"></a>
                    </div>
                    <div class="circle__item _right-top">
                        <p><span>Скачать </span> листы продукта на <br> мембраны <b> CSM</b></p>
                        <a class="dowland-doc" href="#"></a>
                    </div>
                    <div class="circle__item _right-bottom">
                        <p><span>Скачать </span> листы продукта на <br> мембраны <b> CSM</b></p>
                        <a class="dowland-doc" href="#"></a>
                    </div>
                    <div class="circle__center">
                        <picture><source srcset="img/tech/main.webp" type="image/webp"><img src="img/tech/main.png" alt=""></picture>
                    </div>
                </div>
            </div>
            <div class="item_decoretion"></div>
        </section>
        <section class="tabs-section">
            <h2 class="calc__head">Наиболее популярные типы мембран</h2>
            <div class="tabs__wraper _tabs">
                <div class="tabs__points">
                    <div class="tab--point _tabs-item _active">Мембранные элементы Toray </div>
                    <div class="tab--point _tabs-item">Мембранные элементы Toray </div>
                    <div class="tab--point _tabs-item">Мембранные элементы Toray </div>
                    <div class="tab--point _tabs-item">Мембранные элементы Toray </div>
                    <div class="tab--point _tabs-item">Мембранные элементы Toray </div>
                    <div class="tab--point _tabs-item">Мембранные элементы Toray </div>
                </div>
                <div class="tabs__values">
                    <div class="tab__value _tabs-block  _active">
                    <p>TMH20A 400; TMH20A 440; TMG20- 400; TMG20- 440; TMG20D- 400; TMG20D- 440; TML20D-400; TM720D-440; TM820D-440; TM820V-400; ТМН10А; TMG10; TMG10D; TM710D; TML10D; TM810C; TM810V</p>
                        <picture><source srcset="img/tabs/1.webp" type="image/webp"><img src="img/tabs/1.png" alt=""></picture>
                    </div>
                    <div class="tab__value _tabs-block">    <p>TMH20A 400; TMH20A 440; TMG20- 400; TMG20- 440; TMG20D- 400; TMG20D- 440; TML20D-400; TM720D-440; TM820D-440; TM820V-400; ТМН10А; TMG10; TMG10D; TM710D; TML10D; TM810C; TM810V</p>
                        <picture><source srcset="img/tabs/1.webp" type="image/webp"><img src="img/tabs/1.png" alt=""></picture>
                    </div>
                    <div class="tab__value _tabs-block">    <p>TMH20A 400; TMH20A 440; TMG20- 400; TMG20- 440; TMG20D- 400; TMG20D- 440; TML20D-400; TM720D-440; TM820D-440; TM820V-400; ТМН10А; TMG10; TMG10D; TM710D; TML10D; TM810C; TM810V</p>
                        <picture><source srcset="img/tabs/1.webp" type="image/webp"><img src="img/tabs/1.png" alt=""></picture>
                    </div>
                    <div class="tab__value _tabs-block">    <p>TMH20A 400; TMH20A 440; TMG20- 400; TMG20- 440; TMG20D- 400; TMG20D- 440; TML20D-400; TM720D-440; TM820D-440; TM820V-400; ТМН10А; TMG10; TMG10D; TM710D; TML10D; TM810C; TM810V</p>
                        <picture><source srcset="img/tabs/1.webp" type="image/webp"><img src="img/tabs/1.png" alt=""></picture>
                    </div>
                    <div class="tab__value _tabs-block">    <p>TMH20A 400; TMH20A 440; TMG20- 400; TMG20- 440; TMG20D- 400; TMG20D- 440; TML20D-400; TM720D-440; TM820D-440; TM820V-400; ТМН10А; TMG10; TMG10D; TM710D; TML10D; TM810C; TM810V</p>
                        <picture><source srcset="img/tabs/1.webp" type="image/webp"><img src="img/tabs/1.png" alt=""></picture>
                    </div>
                    <div class="tab__value _tabs-block">    <p>TMH20A 400; TMH20A 440; TMG20- 400; TMG20- 440; TMG20D- 400; TMG20D- 440; TML20D-400; TM720D-440; TM820D-440; TM820V-400; ТМН10А; TMG10; TMG10D; TM710D; TML10D; TM810C; TM810V</p>
                        <picture><source srcset="img/tabs/1.webp" type="image/webp"><img src="img/tabs/1.png" alt=""></picture>
                    </div>
                </div>
            </div>
        </section>
        <section class="tabs-section _doc-main">
            <h2 class="calc__head">СЕРТИФИКАТЫ КАЧЕСТВА</h2>
            <div class="doc_wrap ">
                <div class="doc_block" ><picture><source srcset="img/doc/1.webp" type="image/webp"><img src="img/doc/1.png" alt=""></picture></div>
                <div class="doc_block" ><picture><source srcset="img/doc/2.webp" type="image/webp"><img src="img/doc/2.png" alt=""></picture></div>
                <div class="doc_block" ><picture><source srcset="img/doc/3.webp" type="image/webp"><img src="img/doc/3.png" alt=""></picture></div>
                <div class="doc_block" ><picture><source srcset="img/doc/4.webp" type="image/webp"><img src="img/doc/4.png" alt=""></picture></div>
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
                    <picture><source srcset="img/icons/logo.svg" type="image/webp"><img src="img/icons/logo.svg" alt=""></picture>
                </div>
                <div class="footer__social">
                    <div class="footer__item _face"></div>
                    <div class="footer__item _insta"></div>
                </div>
                <p class="politica__footer">Политика конфиденциальности</p>
            </div>
            <div class="footer__second">
                <div class="footer__arrow"></div>
                <p class="politica__footer">© 2021 Все права защищены</p>
            </div>
            <div class="footer__third">
                <h4 class="footer__third--head">Наши контакты:</h4>
                <a href="tel:+380674837563" class="footer__third--item">+38 067 483 75 63</a>
                <p class="footer__third--item">Украина г.Киев</p>
                <p class="footer__third--item">ул. Зоологическая 5а</p>
                <p class="footer__third--item">Режим работы: пн-вс с 9.00-18.00</p>
            </div>
        </div>
    </footer>
    <div class="cookie _active">
        <div class="cookie__left">
            <p>Этот сайт использует файлы cookie. Более подробные данные вы можете найти в политике по защите персональных данных</p>
            <br>
            <p class="politica__footer">Политика конфиденциальности</p>
        </div>
        <button class="btn-cookie">ПРИНЯТЬ</button>
    </div>
</div>
<div class="popup popup_popup">
    <div class="popup__content">
        <div class="popup__body">
            <div class="popup__close"></div>
            <h1>Политика конфиденциальности</h1>
            <h3>Заглавие</h3>
            <p>Повседневная практика показывает, что базовый вектор развития позволяет оценить значение инновационных методов управления процессами! Каждый из нас понимает очевидную вещь: понимание сути ресурсосберегающих технологий способствует подготовке и реализации дальнейших направлений развития.
                <br>1. В своём стремлении улучшить пользовательский опыт . мы упускаем, что элементы политического процесса. превращены в посмешище, хотя само их существование приносит несомненную пользу.обществу. Современные технологии достигли такого уровня, что укрепление и развитие внутренней структуры играет важную роль в формировании кластеризации усилий. Имеется спорная точка зрения, гласящая примерно следующее: активно развивающиеся страны третьего мира лишь добавляют фракционных разногласий и объявлены нарушающими общечеловеческие нормы этики и морали. Многие известные личности, инициированные исключительно синтетически, представлены в исключительно положительном свете. Активно развивающиеся страны третьего мира будут функционально разнесены на независимые элементы. Прежде всего, высококачественный прототип будущего проекта играет определяющее значение для как самодостаточных, так и внешне зависимых концептуальных решений.</p>
            <h3>Заглавие</h3>
            <p>Повседневная практика показывает, что базовый вектор развития позволяет оценить значение инновационных методов управления процессами! Каждый из нас понимает очевидную вещь: понимание сути ресурсосберегающих технологий способствует подготовке и реализации дальнейших направлений развития.
                <br>1. В своём стремлении улучшить пользовательский опыт . мы упускаем, что элементы политического процесса. превращены в посмешище, хотя само их существование приносит несомненную пользу.обществу. Современные технологии достигли такого уровня, что укрепление и развитие внутренней структуры играет важную роль в формировании кластеризации усилий. Имеется спорная точка зрения, гласящая примерно следующее: активно развивающиеся страны третьего мира лишь добавляют фракционных разногласий и объявлены нарушающими общечеловеческие нормы этики и морали. Многие известные личности, инициированные исключительно синтетически, представлены в исключительно положительном свете. Активно развивающиеся страны третьего мира будут функционально разнесены на независимые элементы. Прежде всего, высококачественный прототип будущего проекта играет определяющее значение для как самодостаточных, так и внешне зависимых концептуальных решений.</p>
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

                        <p class="checkbox__text  checkbox__header">ПОЛУЧИТЬ ПРАЙС-ЛИСТ</p>
                    </label>
                </div>

            </form>
        </div>
    </div>
</div>
{/block}

<form method="post" class="ajax_form form_footer" id="orderFormPopup">
    <h2 class="calc__head _scr-item">{'submit_your_application' | lexicon}</h2>
    <h3 class="sub__success">{'get_availability_and_price' | lexicon}</h3>

    <input type="text" name="workemail" value="[[+fi.workemail]]" style="display: none;">

    <input type="text" class="input _reg" required placeholder="{'placeholder_name' | lexicon}" name="name" value="[[+fi.name]]">
    <input type="text" class="input _reg _phone" id="phone" required placeholder="+38 (---) --- -- --" name="phone" value="[[+fi.phone]]">
    <input type="email"  class="input _reg" required placeholder="e-mail" name="email" value="[[+fi.email]]">
    <input type="text" name="Product" class="input" required placeholder="Product" value="[[+fi.Product]]">

    <div class="footer_form">
        <button class="btn-footer" type="submit">{'btn_submit' | lexicon}</button>
        <div class="checkbox__wrap">
            <label class="checkbox">
                <input type="hidden" name="agreement[]" value="" />
                <input id="formAgreement" type="checkbox" name="agreement[]" class="checkbox__input _req" value="yes" [[!+fi.agreement:FormItIsChecked=`yes`]]>

                <p class="checkbox__text  checkbox__header">{'get_price_list' | lexicon}</p>
            </label>
            <label class="checkbox">
                <input type="hidden" name="politic[]" value="" />
                <input id="politic" type="checkbox" name="politic[]" class="checkbox__input _req" value="yes" [[!+fi.politic:FormItIsChecked=`yes`]]>

                <p class="checkbox__text  checkbox__header" >{'consent_text' | lexicon}</p>
            </label>
        </div>

    </div>

</form>

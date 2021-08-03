<form method="post" class="ajax_form form_footer" id="orderForm">

    <input type="text" name="workemail" value="[[+fi.workemail]]" style="display: none;">

    <input type="text" class="input _reg" required placeholder="{'placeholder_name' | lexicon}" name="name" value="[[+fi.name]]">
    <input type="text" class="input _reg _phone" id="phone" required placeholder="+38 (---) --- -- --" name="phone" value="[[+fi.phone]]">
    <input type="email"  class="input _reg" required placeholder="e-mail" name="email" value="[[+fi.email]]">
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

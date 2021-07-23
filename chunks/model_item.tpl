{set $alias_parent = $parent | resource:"alias"}
{set $alias_parent_2 = $alias}
{set $id_table =  $alias_parent ~ '_' ~ $alias_parent_2}

<table class="_calc__table d-none" id="{$id_table}">
    <tr class="first_tr">
        <td>{'table_td_1' | lexicon}</td>
        <td>{'table_td_2' | lexicon}</td>
        <td>{'table_td_3' | lexicon}</td>
        <td>{'table_td_4' | lexicon}</td>
        <td>{'table_td_5' | lexicon}</td>
        <td>{'table_td_6' | lexicon}</td>
    </tr>
    {foreach $model_characteristics as $item}
    <tr>
        <td {if $item.hit}class="hit"{/if}>{$item.table_td_1}</td>
        <td>{$item.table_td_2}</td>
        <td>{$item.table_td_3}</td>
        <td>{$item.table_td_4}</td>
        <td>{$item.table_td_5}</td>
        <td>{$item.table_td_6}</td>
    </tr>
    {/foreach}
</table>

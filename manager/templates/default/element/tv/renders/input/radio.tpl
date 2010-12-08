<div id="tv{$tv->id}-cb"></div>

<script type="text/javascript">
// <![CDATA[
{literal}
MODx.load({
{/literal}
    xtype: 'radiogroup'
    ,id: 'tv{$tv->id}'
    ,vertical: true
    ,columns: 1
    ,renderTo: 'tv{$tv->id}-cb'
    ,width: 500
    ,allowBlank: true
    ,hideMode: 'offsets'

    ,items: [{foreach from=$opts item=item key=k name=cbs}
    {literal}{{/literal}
        name: 'tv{$tv->id}'
        ,id: 'tv{$tv->id}-{$k}'
        ,boxLabel: '{$item.text|escape:"javascript"}'
        ,checked: {if $item.checked}true{else}false{/if}
        ,inputValue: {if $item.value !== 0 AND $item.value !== null}'{$item.value|escape:"javascript"}'{else}0{/if}
        ,value: {if $item.value !== 0 AND $item.value !== null}'{$item.value|escape:"javascript"}'{else}0{/if}

        {literal},listeners: { 'check': MODx.fireResourceFormChange }{/literal}

    {literal}}{/literal}{if NOT $smarty.foreach.cbs.last},{/if}
    {/foreach}]
{literal}}{/literal});

// ]]>
</script>
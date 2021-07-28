let g:deepl#api_key="f951e557-b1e4-93d1-eeb2-0a1653b6c2dd:fx"

vmap zj :call deepl#replace_to_translated_text('', 'JA')<CR>gvgq
vmap ze :call deepl#replace_to_translated_text('', 'EN')<CR>gvgq
nmap zj vip:call deepl#replace_to_translated_text('', 'JA')<CR>gvgq
nmap ze vip:call deepl#replace_to_translated_text('', 'EN')<CR>gvgq

" curl https://api-free.deepl.com/v2/translate -X POST --data "auth_key=$DEEPL_API_KEY&target_lang=EN-US&text=$TEXT"

let g:deepl#endpoint = "https://api-free.deepl.com/v2/translate"
let g:deepl#auth_key  = $DEEPL_API_KEY

vmap t<C-e> <Cmd>call deepl#v("EN")<CR>
vmap t<C-j> <Cmd>call deepl#v("JA")<CR>

"vmap zj :call deepl#replace_to_translated_text('', 'JA')<CR>gvgq
"vmap ze :call deepl#replace_to_translated_text('', 'EN')<CR>gvgq
"nmap zj vip:call deepl#replace_to_translated_text('', 'JA')<CR>gvgq
"nmap ze vip:call deepl#replace_to_translated_text('', 'EN')<CR>gvgq

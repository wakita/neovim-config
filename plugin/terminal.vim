" # terminal

"- 起動するシェルはzsh
set sh=zsh

"- ESCでcommmand mode
tnoremap <silent> <ESC> <C-\><C-n>

" # neoterm (https://github.com/kassio/neoterm)
"let g:neoterm_default_mod = 'botright'
let g:neoterm_default_mod = 'tab'
let g:neoterm_repl_python = ['venv vis', 'clear', 'ipython']

autocmd TermOpen * setlocal statusline=%f

"%{b:term_title}

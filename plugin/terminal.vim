" terminal

"- 起動するシェルはzsh
set sh=zsh

"- ESCでcommmand mode
tnoremap <silent> <ESC> <C-\><C-n>

"
" neoterm (https://github.com/kassio/neoterm)

let g:neoterm_autoscroll = 1


let _=<<---
新規ターミナルウィンドウの大きさと開き方の指定

現在のウィンドウの大きさに応じて、新規ウィンドウを右、下に開く。
空間が足りない場合は新規タブとして開く
---

let g:neoterm_callbacks = {}
function! g:neoterm_callbacks.before_new()
  let g:neoterm_size = ''
  if winheight('.') > 30
    let g:neoterm_default_mod = 'belowright'
  elseif winwidth('.') > 100
    let g:neoterm_default_mod = 'belowright vertical'
    let g:neoterm_size = 20
  else
    let g:neoterm_default_mod = 'tab'
  end
endfunction


let _=<<---
Pythonファイルの内容をNeoTermに送ろうとすると自動的に iPython を起動

iPython の自動インデント機能が悪さをするので `--no-autoindent` を指定している。
---

let g:neoterm_repl_python = [
  \ 'clear',
  \ '/Users/wakita/.venvs/vis/bin/ipython --no-autoindent' ]

autocmd TermOpen * setlocal statusline=%f

command! -nargs=+ TT Topen | T <args>

vnoremap <Leader>2 :TREPLSendSelection<CR>
nnoremap <Leader>2 :TREPLSendLine<CR>

"%{b:term_title}

" neoterm 関連の参考になったページ
" - [公式ドキュメント](https://github.com/kassio/neoterm/blob/master/README.md)
" - [A Ruby REPL workflow with Neovim and neoterm](https://austeretechnology.wordpress.com/2017/07/18/a-ruby-repl-workflow-with-neovim-and-neoterm/)

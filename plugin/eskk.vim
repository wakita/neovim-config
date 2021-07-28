imap <C-j> <Plug>(eskk:toggle)

let g:eskk#directory = "~/.eskk"
let g:eskk#dictionary = { 'path': "~/.skk-jisyo", 'sorted': 0, 'encoding': 'utf-8', }
let g:eskk#large_dictionary = { 'path': "~/.eskk/SKK-JISYO.L", 'sorted': 1, 'encoding': 'euc-jp', }
let g:eskk#large_dictionary = { 'path': "~/Dropbox/lib/skk/SKK-JISYO.L", 'sorted': 1, 'encoding': 'euc-jp', }

set imdisable

let s:eskk_mode_tables = [
      \ eskk#table#new('rom_to_hira'.'*', 'rom_to_hira'),
      \ eskk#table#new('rom_to_kata'.'*', 'rom_to_kata')]

function! s:eskk_register_mode_table()
  call eskk#register_mode_table('hira', s:eskk_mode_tables[0])
  call eskk#register_mode_table('kata', s:eskk_mode_tables[1])
endfunction

autocmd User eskk-initialize-pre call s:eskk_register_mode_table()

function! s:eskk_punctuation(punctuation_mapping)
  for table in s:eskk_mode_tables
    for [from, to] in a:punctuation_mapping
      call table.add_map(from, to)
    endfor
  endfor
endfunction

command SkkTechnical call s:eskk_punctuation([[',', '，'], ['.', '．']])
command SkkCasual    call s:eskk_punctuation([[',', '、'], ['.', '。']])

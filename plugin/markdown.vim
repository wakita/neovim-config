autocmd BufNewFile,BufRead *.md set filetype=markdown

let g:pandoc#after#modules#enabled = ["ultisnips"]
let g:pandoc#folding#mode = 'stacked'
let g:pandoc#spell#enabled = 0

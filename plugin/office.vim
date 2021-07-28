"http://docx2txt.sourceforge.net
"use docx2txt.pl to allow VIm to view the text content of a .docx file directly.
"if executable('docx2txt.pl')
"  autocmd BufReadPre *.docx set readonly
"  autocmd BufReadPost *.docx execute '%!dox2txt.pl'
"else
"  let g:zipPlugin_ext += ',*.docx'
"endif

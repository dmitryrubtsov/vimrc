""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1

" Code running
au FileType python nnoremap <buffer> <F5> :w<cr> :!python %<cr>

" Show line numbers
au FileType python set number

" highlight 'long' lines
au FileType python set nowrap
au FileType python set colorcolumn=80

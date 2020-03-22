"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Sections:

" => Python section
" => GnuPG encrypted files

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
" highlight 'long' lines
au FileType python set nowrap
au FileType python set colorcolumn=80
au FileType python setlocal completeopt-=preview
 
" python executables for different plugins
let g:pymode_python='python3'
let g:syntastic_python_python_exec='python3'
 
" rope
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=0
let g:pymode_doc_bind='K'

" lints
let g:pymode_lint=0
 
" virtualenv
let g:pymode_virtualenv=0

" breakpoints
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'
 
" syntax highlight
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

" code folding
let g:pymode_folding=1
 
" pep8 indents
let g:pymode_indent=1
 
" Code running
let g:pymode_run=1
let g:pymode_run_bind='<F5>'

""""""""""""""""""""""""""""""
" => GnuPG encrypted files
""""""""""""""""""""""""""""""

" Transparent editing of gpg encrypted files.
" By Wouter Hanegraaff
augroup encrypted
  au!

  " First make sure nothing is written to ~/.viminfo while editing
  " an encrypted file.
  autocmd BufReadPre,FileReadPre *.asc,*.gpg,*.pgp set viminfo=
  " We don't want a swap file, as it writes unencrypted data to disk
  autocmd BufReadPre,FileReadPre *.asc,*.gpg,*.pgp set noswapfile

  " Switch to binary mode to read the encrypted file
  autocmd BufReadPre,FileReadPre *.asc,*.gpg,*.pgp set bin
  autocmd BufReadPre,FileReadPre *.asc,*.gpg,*.pgp let ch_save = &ch|set ch=2
  " (If you use tcsh, you may need to alter this line.)
  autocmd BufReadPost,FileReadPost *.asc,*.gpg,*.pgp '[,']!gpg --decrypt 2> /dev/null

  " Switch to normal mode for editing
  autocmd BufReadPost,FileReadPost *.asc,*.gpg,*.pgp set nobin
  autocmd BufReadPost,FileReadPost *.asc,*.gpg,*.pgp let &ch = ch_save|unlet ch_save
  autocmd BufReadPost,FileReadPost *.asc,*.gpg,*.pgp execute ":doautocmd BufReadPost " . expand("%:r")

  " Convert all text to encrypted text before writing
  " (If you use tcsh, you may need to alter this line.)
  autocmd BufWritePre,FileWritePre *.asc,*.gpg,*.pgp '[,']!gpg --default-recipient-self -ae 2>/dev/null
  " Undo the encryption so we are back in the normal text, directly
  " after the file has been written.
  autocmd BufWritePost,FileWritePost *.asc,*.gpg,*.pgp u
augroup END
"
""""""""""""""""""""""""""""""
" => Java
""""""""""""""""""""""""""""""

" Code compile and running
autocmd Filetype java set makeprg=javac\ %
autocmd Filetype java set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
autocmd Filetype java map <F5> :!time java -cp %:p:h %:t:r<CR>
autocmd Filetype java map <F9> :make<Return>:copen<CR>>

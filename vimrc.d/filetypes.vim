"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Sections:

" => Python section

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
" let python_highlight_all = 1
" 
" " Code running
" au FileType python nnoremap <buffer> <F5> <Esc>:w !python<cr>
" au FileType python nnoremap <buffer> <S-F5> :!python %<cr>
" " Show line numbers
" au FileType python set number
" 
" highlight 'long' lines
au FileType python set nowrap
au FileType python set colorcolumn=80
au FileType python setlocal completeopt-=preview
 
" python executables for different plugins
let g:pymode_python='python3'
let g:syntastic_python_python_exec='python3'
" 
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
" 
" " virtualenv
" let g:pymode_virtualenv=1
" 
" " breakpoints
" let g:pymode_breakpoint=1
" let g:pymode_breakpoint_key='<leader>b'
" 
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
let g:pymode_folding=0
 
" pep8 indents
let g:pymode_indent=1
 
" code running
let g:pymode_run=1
let g:pymode_run_bind='<F5>'
" 
" " syntastic
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_loc_list=1
" let g:syntastic_enable_signs=1
" let g:syntastic_check_on_wq=0
" let g:syntastic_aggregate_errors=1
" let g:syntastic_loc_list_height=5
" let g:syntastic_error_symbol='X'
" let g:syntastic_style_error_symbol='X'
" let g:syntastic_warning_symbol='x'
" let g:syntastic_style_warning_symbol='x'
" let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python']

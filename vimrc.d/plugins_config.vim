"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Sections:

" => Plugins
" => bufexplorer plugin
" => ctrlp.vim
" => tagbar
" => nerdtree
" => jedi-vim
" => Syntastic (syntax checker)
" => vim-gitgutter (Git gutter)
" => lightline
" => vim-yankstack
" => DevIcon Settings
" => vim-multiple-cursors
" => markdown-syntax
" => UltiSnips

""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""

" Automatic installation Vim plugin manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" --> Code/Project navigation
Plug 'corntrace/bufexplorer' " Switch between buffers by using the one of the default public interfaces
Plug 'kien/ctrlp.vim', { 'on': ['CtrlP', 'CtrlPBuffer']}, " Fuzzy file, buffer, mru, tag, etc finder
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' } " Vim plugin that displays tags in a window
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " A tree explorer plugin

" --> Colorschemes
Plug 'NLKNguyen/papercolor-theme', { 'do': 'mkdir -p ~/.vim/colors; cp -f colors/*.vim ~/.vim/colors/' } " Light & Dark Vim color schemes inspired by Google's Material Design

" --> Languages support
Plug 'davidhalter/jedi-vim', { 'for': 'python' } " Using the jedi autocompletion library
Plug 'w0rp/ale', { 'for': 'python' } " Asynchronous linting/fixing for Vim and Language Server Protocol (LSP) integration

" --> Other
Plug 'airblade/vim-gitgutter' " A Vim plugin which shows a git diff in the gutter
Plug 'itchyny/lightline.vim' " A light and configurable statusline/tabline
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair
Plug 'maxbrunsfeld/vim-yankstack' " A lightweight implementation of emacs's kill-ring
Plug 'maximbaz/lightline-ale' " ALE indicator for the lightline
Plug 'ryanoasis/vim-devicons' " Adds file type glyphs/icons to popular Vim plugins
Plug 'terryma/vim-multiple-cursors' " True Sublime Text style multiple selections
Plug 'tpope/vim-fugitive', " A Git wrapper so awesome

" --> Markdown
Plug 'godlygeek/tabular', { 'for': 'markdown' } " For text filtering and alignment
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' } " Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

" --> Python
Plug 'python-mode/python-mode', { 'branch': 'develop', 'for': 'python' } " Python-mode. PyLint, Rope, Pydoc, breakpoints from box.

" --> Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

""""""""""""""""""""""""""""""
" => bufexplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>

""""""""""""""""""""""""""""""
" => ctrlp.vim
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
let g:tagbar_width = 30
let g:tagbar_autofocus = 1
let g:tagbar_type_vim  = {
             \ 'ctagstype' : 'vim',
             \ 'kinds'     : [
             \ 'p:Project',
             \ 'a:autocommand groups',
             \ 'c:user-defined commands',
             \ 'f:function definitions',
             \ 'm:maps',
             \ 'v:variable definitions',
             \ 'n:vimball filename'
             \ ]
             \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => jedi-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show call signatures
let g:jedi#show_call_signatures = 1
" Enable autocomplete on dot
let g:jedi#popup_on_dot = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\}
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']

nmap <silent> <F7> :ALELint<cr>
" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-gitgutter (Git gutter)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'keymap' ],
      \              [ 'gitbranch', 'fileformat', 'fileencoding', 'filetype' ],
      \              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ] ]
      \ }
      \ }
let g:lightline.component = {
      \  'keymap': '%{&iminsert == 0 ? "EN" : "RU"}',
      \ }

let g:lightline.component_expand = {
      \  'gitbranch': 'fugitive#head',
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \  'linter_warnings': 'lightline#ale#warnings',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }
""""""""""""""""""""""""""""""
" => vim-yankstack
""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-n> <Plug>yankstack_substitute_newer_paste

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => DevIcon Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" loading the plugin
let g:webdevicons_enable = 1

" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1

" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1

" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1

" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 0

" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1

" enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1

" enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
let g:DevIconsEnableFolderExtensionPatternMatching = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => markdown-syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-instant-markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:instant_markdown_mathjax = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit = 'vertical'

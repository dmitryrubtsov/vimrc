# vimrc
# Hotkeys
```
<F5>                    Code running (for python)
<F7>                    Syntax checker (:ALELint)
<S-F7>                  Switches on/off spell checking
<F8>                    Tagbar (:TagbarToggle)
<F12>                   Switch background to light/dark
```
## Editing mappings
### Move a line of text using ALT+[jk] or Command+[jk] on mac
```
<M-j>                   Move down
<M-k>                   Move up
```
## Python
```
<leader> b              Add/remove breakpoints (for python)
K                       Show documentation for current word (selection) (for python)
```
## Search commands
```
<space>                 Search forward for {pattern}
<c-space>               Search backward for {pattern}
<leader> <cr>           Disable highlight when is pressed (:noh)
```
## Spell
```
<leader> sa             Spell zs
<leader> sn             Spell ]s
<leader> sp             Spell [s
```
## Moving around, tabs, windows and buffers
```
<leader> ba             Close all the buffersleader
<leader> bd             Close the current buffer
<leader> h              Go to previous buffer in buffer list.(:bprevious)
<leader> l              Go to next buffer in buffer list.(:bnext)
<leader> tc             Close current tab page.(:tabclose)
<leader> te             Super useful when editing files in the same directory :tabedit <c-r>=expand("%:p:h")<cr>
<leader> tl             Let 'tl' toggle between this and the last accessed tab
<leader> tm             Move the current tab page to after tab page N.  Use zero to make the current tab page the first one.(:tabmove)
<leader> tn             Open a new tab page with an empty window, after the current tab page. (:tabnew)
<leader> to             Close all other tab pages.(:tabonly)
<leader> cd             Switch CWD to the directory of the open buffer
<leader> o              Bufexplorer will bring up the selected buffer in the window (:BufExplorer)
```
## Other
```
<c-b>                   :CtrlPBuffer
<leader> j              :CtrlP
<c-n>                   yankstack_substitute_newer_paste
<c-p>                   yankstack_substitute_older_paste
<leader> d              :GitGutterToggle
<leader> nb             :NERDTreeFromBookmark
<leader> nf             :NERDTreeFind
<leader> nn             If a NERDTree already exists for this tab, it is reopened and rendered again.  If no NERDTree exists for this tab then this command acts the same as the |:NERDTree| command. (:NERDTreeToggle)
```

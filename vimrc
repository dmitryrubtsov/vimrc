"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                                                                              "
"                                 .::::.                                       "
"                    ___________ :;;;;:`____________                           "
"                    \_________/ ?????L \__________/                           "
"                      |.....| ????????> :.......'                             "
"                      |:::::| $$$$$$"`.:::::::' ,                             "
"                     ,|:::::| $$$$"`.:::::::' .OOS.                           "
"                   ,7D|;;;;;| $$"`.;;;;;;;' .OOO888S.                         "
"                 .GDDD|;;;;;| ?`.;;;;;;;' .OO8DDDDDNNS.                       "
"                  'DDO|IIIII| .7IIIII7' .DDDDDDDDNNNF`                        "
"                    'D|IIIIII7IIIII7' .DDDDDDDDNNNF`                          "
"                      |EEEEEEEEEE7' .DDDDDDDNNNNF`                            "
"                      |EEEEEEEEZ' .DDDDDDDDNNNF`                              "
"                      |888888Z' .DDDDDDDDNNNF`                                "
"                      |8888Z' ,DDDDDDDNNNNF`                                  "
"                      |88Z'    "DNNNNNNN"                                     "
"                      '"'        "MMMM"                                       "
"                                   ""                                         "
"                                                                              "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

if empty(glob('~/.vim/vimrc.d/personal.vim'))
  silent !touch ~/.vim/vimrc.d/personal.vim
endif

source ~/.vim/vimrc.d/basic.vim
source ~/.vim/vimrc.d/filetypes.vim
source ~/.vim/vimrc.d/personal.vim          "for personal info
source ~/.vim/vimrc.d/plugins_config.vim 

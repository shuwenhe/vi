"Copyright (C) 2022 shuwen , Inc., Shuwen He <1201220707@pku.edu.cn>
"date20220520

set nu "显示行号
set cursorline " 添加绿色下划线，突出显示当前行

"go
set tags+=/home/shuwen/go/go-project/src/tags " ctags 代码跳转
set tags+=/home/shuwen/go/go-project/src/chitchat/tags " ctags 代码跳转
set tags+=/home/shuwen/go/go/tags " ctags 代码跳转

"linux
set tags+=/home/shuwen/linux-4.20.7/tags " ctags 代码跳转


"

filetype indent on
filetype plugin on "开启探测文件类型
let g:html_indent_inctags = "body,head,tbody"   " 缩进body head
"let tags+=./tags
" let g:html_indent_script1 = "inc"     " 缩进<script>标签
" let g:html_indent_style1 = "inc"      " 缩进<style>标签
au FileType html,python,vim,javascript setl shiftwidth=2
au FileType html,python,vim,javascript setl tabstop=2
au FileType java,php setl shiftwidth=4

"如果文件类型为.php文件
        if &filetype == 'php'
        call append(line(".")+6, "<?php")
    endif

        "如果文件类型为.html文件
        if &filetype == 'html'
        call append(line(".")+6, "<!DOCTYPE HTML>")
        call append(line(".")+7, "<html lang="en-US">")
        call append(line(".")+8, "<head>")
        call append(line(".")+9, "      <meta charset="UTF-8">")
        call append(line(".")+10, "     <title></title>")
        call append(line(".")+11, "</head>")
        call append(line(".")+12, "<body>")
        call append(line(".")+13, "</body>")
        call append(line(".")+14, "</html>")
    endif

        "如果文件类型为.css文件
        if &filetype == 'css'
        call setline(1, "@charset 'utf-8'")
    endif

    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
"endfunc
"endfunc
au FileType java,php setl tabstop=4
syntax on
set showmatch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set wrap "自动折行
set ai

set tabstop=2
set autoindent
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set cindent shiftwidth=2
set autoindent
set smartindent
set guifont=30
set fileencodings=utf-8,gbk
let Tlist_Auto_Open = 1
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
set nocp
filetype plugin on
set ofu=syntaxcomplete#Complete
set omnifunc=phpcomplete#CompletePHP
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"默认打开Taglist
let Tlist_Auto_Open=1
" Tag list (ctags)
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
" minibufexpl插件的一般设置
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
let g:SuperTabRetainCompletionType = 2
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete
if has("autocmd") && exists("+omnifunc")
      autocmd Filetype *
    \ if &omnifunc == "" |
    \    setlocal omnifunc=syntaxcomplete#Complete |
    \ endif
endif
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
"let g:rubycomplete_rails = 1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
:imap <tab> <c-x><c-o>
if has('mouse')
        set mouse-=a
endif
set nofoldenable

"  vi配置end 201811091010

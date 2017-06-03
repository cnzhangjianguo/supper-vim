" ==============================================================
" author: zhangjianguo@ofo.com
" site: https://zhangjianguo.cn
" date: 2017-05-26
" ==============================================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"html自动补全插件
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
let g:sparkupExecuteMapping = '<leader><tab>'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'fancy'
set laststatus=2
" 纠正windows下颜色状态栏背景颜色不显示问题
set t_Co=256

"导航与搜索
Plugin 'scrooloose/nerdtree'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"map <C-n> :NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"快捷注释
Plugin 'scrooloose/nerdcommenter'
"Ctrl+P快速搜索
Plugin 'kien/ctrlp.vim'
"自动补全，需要vim版本7.4.1578+
"Plugin 'Valloric/YouCompleteMe'
"语法检查
Plugin 'vim-syntastic/syntastic'
"快速替换
Plugin 'tpope/vim-surround'
"代码Tab自动补全
Plugin 'ervandew/supertab'
"括号自动补全
Plugin 'Raimondi/delimitMate'
"MiniBuffer
Plugin 'fholgado/minibufexpl.vim'
set hidden " 避免必须保存修改才可以跳转buffer
" buffer快速导航
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
" 查看buffers
nnoremap <Leader>l :ls<CR>
" 通过索引快速跳转
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>"

"lavavel blade模板语法支持
Plugin 'jwalton512/vim-blade'
" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']

" Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
      \   'markdown': 'endmarkdown',
      \   'cache': 'endcache',
      \ }

" taglist插件
Plugin 'johnbintz/vim-taglist-plus'
" 显示在右侧
let Tlist_Use_Right_Window=1
" tagList窗口是最后一个窗口，则退出Vim
let Tlist_Exit_OnlyWindow=1
nnoremap <Leader>t :TlistToggle<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"字符串快捷输入 {{{
"编辑模式下字符输入替换，用于快速输入或者纠错
"iabbrev与inoremap的区别：
"http://www.kancloud.cn/kancloud/learn-vimscript-the-hard-way/49283
"iabbrev @@ xxx@xxx.com
" }}}

"快捷编辑.vimrc配置文件
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"设置编码
scriptencoding utf-8
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"设置标尺
set ruler
"自动语法高亮
syntax on
"显示行号
set number
"设置上下可视行数
set scrolloff=6
"将tab替换为4个空格
set expandtab
"设定tab长度为4
set tabstop=4
"设置按BackSpace的时候可以一次删掉4个空格
set softtabstop=4
"设定左移或者右移时的宽度为4个空格
set shiftwidth=4
"根据文件中其他地方的缩进空格个数来确定一个tab是多少个空格
set smarttab
"---------------------------------------------
"不设定在插入状态无法用退格键和 Delete 键删除回车符
set backspace=indent,eol,start  
"设置光标可以跨行移动
"set whichwrap+=<,>,h,l
"光标高亮当前行
"set cursorline
"光标高亮所在列
"set cursorcolumn
"设置多窗口同步滚动
"set scrollbind
"文件类型检测
filetype on
"文件类型插件检测
filetype plugin on
"---------------------------------------------
"搜索时忽略大小写
set ignorecase
"搜索时有一个或以上大写字母时仍大小写敏感
set smartcase
"搜索到文件两端时不重新搜索
set nowrapscan
"在你输入查找内容的同时，vim就开始对你输入的内容进行匹配，并显示匹配的位置
set incsearch
"搜索时高亮显示被找到的文本
set hlsearch
"关闭错误声音
set noerrorbells
set novisualbell
"不自动换行
set nowrap
"显示括号配对情况
set showmatch
"在输入右括号时，短暂地跳到对应括号处,跳转时间，单位：十分之一秒
set matchtime=2
"自动缩进
set autoindent

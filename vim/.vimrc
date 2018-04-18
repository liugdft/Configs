""""""""""
" Modified on 2018.04.13
" File: ~/.vimrc
""""""""""

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible              " be iMproved, required

filetype off                  " required

" 自定义配置
" 开启语法高亮
syntax enable
syntax on

" 解决 mac 上面个 delete 不能删除的问题
set backspace=2

" 显示行号
set number
set relativenumber

" 如果在终端使用，开启256色，终端默认只支持16色
set t_Co=256

" 启动的时候不显示那个援助乌干达儿童的提示
set shortmess=atI

" 从不备份  
set nobackup
set noswapfile

" 共享剪贴板 
set clipboard+=unnamed 

" 突出显示当前行
set cursorline
set cursorcolumn

" 标识80字符处
set colorcolumn=80

" 设置魔术
set magic

" 隐藏工具栏
set guioptions-=T

" 隐藏菜单栏
set guioptions-=m

" 去掉输入错误的提示声音
set noeb

" 自动缩进
set autoindent
set smartindent
set pastetoggle=<F8>

" Tab键的宽度
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

" 不用空格代替制表符
set noexpandtab

" 在行和段开始处使用制表符
set smarttab

" 搜索忽略大小写
set ignorecase

" 搜索逐字符高亮
set hlsearch
set incsearch

" 行内替换
set gdefault

" 编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

" 高亮显示匹配的括号
set showmatch

" 根据当前编辑文件，自动切换PWD
set autochdir

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

""""""""""
" solarized主题插件
Plugin 'altercation/vim-colors-solarized'
let g:solarized_termcolors=256
""""""""""

""""""""""
" vim-airline is a alternative powerline plugin for vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Smarter tab line
" Automatically displays all buffers when there's only one tab open.
let g:airline_theme="badwolf"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
""""""""""

""""""""""
" nerdtree文件目录书插件
Plugin 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
let NERDTreeShowHidden=1
map <F2> :NERDTreeToggle<CR>
""""""""""

""""""""""
" markdown插件
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
""""""""""

""""""""""
" 解决org-mode的一个报错
"Plugin 'tpope/vim-speeddating'
""""""""""

""""""""""
" python语言插件
Plugin 'klen/python-mode'
""""""""""

""""""""""
" golang语言插件
Plugin 'fatih/vim-go'
let g:go_fmt_autosave = 1
" autocmd BufNewFile,BufRead *.go setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4
""""""""""

""""""""""
" tag插件
Plugin 'majutsushi/tagbar'
map <F3> :TagbarToggle<CR>
""""""""""

""""""""""
" 文件搜索插件
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_match_window = 'min:1,max:10,results:50'
""""""""""

""""""""""
" 自动补全
Plugin 'Valloric/YouCompleteMe'
""""""""""

""""""""""
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'xolox/vim-easytags'
" easytags 依赖 vim-misc
Plugin 'xolox/vim-misc'
map <F4> :UpdateTags<CR>
""""""""""

""""""""""
" 批量注释插件
Plugin 'scrooloose/nerdcommenter'
""""""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set background=dark
colorscheme solarized
set laststatus=2

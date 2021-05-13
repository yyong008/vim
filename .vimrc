set hlsearch
set encoding=UTF-8

" 显示行号
set nu

" 语法高亮
syntax on

" 设置主题

colorscheme gruvbox

" 设置空白字符的视觉提示
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽

"设置tab 为两个空格
set ts=2
set softtabstop=2
set shiftwidth=2
set expandtab
set hlsearch

" 折叠
set foldlevel=1999999999999999999 "设置折叠层级

" vim-devicons
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

" ==================================== vim-plu ===============
" vim-plu
call plug#begin("~/.vim/plugged")
" 欢迎页
Plug 'mhinz/vim-startify'

" git 地址
Plug 'tpope/vim-fugitive'

"emmit 插件 适用于 html jsx tsx
Plug 'mattn/emmet-vim'

" javascript 支持
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'

" typescript 支持
Plug 'leafgarland/typescript-vim'

" Rust 支持
Plug 'rust-lang/rust.vim'

" vim 支持 jsx
Plug 'mxw/vim-jsx'

" Plug 'ianks/vim-tsx' tsx 支持
Plug 'ianks/vim-tsx'

"文件管理
Plug 'preservim/nerdtree'

" vim 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" icons:
 Plug 'ryanoasis/vim-devicons'

"缩进线
Plug 'yggdroot/indentline'

"模糊搜索
Plug 'ctrlpvim/ctrlp.vim'


"Coc vim 代码补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"vim surround.vim 引用括号简化
Plug 'tpope/vim-surround'

" less语法
Plug 'groenewege/vim-less'

"注释
Plug 'tpope/vim-commentary'

"eslint 官方格式化
Plug 'eslint/eslint'

" prettier
Plug 'prettier/vim-prettier'

" markdown
Plug 'plasticboy/vim-markdown'
Plug 'findango/vim-mdx'

" vim 代码片段
 Plug 'honza/vim-snippets'

" Plug 'SirVer/ultisnipts'

" React Snippets
Plug 'epilande/vim-react-snippets' " React code snippets
Plug 'epilande/vim-es2015-snippets' " ES2015 code snippets (Optional)

" vim syntastic and vim-autoformat
Plug 'scrooloose/syntastic'
" Plug 'Chie192/vim-autoformat'

" 主题： gruvbox
Plug 'morhetz/gruvbox'

call plug#end()

" ==================================== vim-plu ===============

"模糊搜索 ctrlp 快捷键映射
let g:ctrlp_map = '<c-p>'

"NerdTree显示与关闭切换
map <C-n> :NERDTreeToggle<CR>


"自动闭 {、 [、 (、<、《、『 等等
:inoremap [ []<Esc>:let leavechar="]"<CR>i
:inoremap ( ()<Esc>:let leavechar=")"<CR>i
:inoremap < <><Esc>:let leavechar=">"<CR>i
:inoremap 《 《》<Esc>:let leavechar="》"<CR>i
:inoremap { {} <Esc>: let leavechar="}" <CR>i

"er 键盘
let g:mapleader="<space>"

" airline 顶部
 let g:airline#extensions#tabline#enabled = 1
 let g:airline_powerline_fonts = 1


" ------------------------------------------------------
" --> Normal Stuff <--
" --------------------------------------------------------

" first ... load plugins from vundle
"source ~/.vim/plugins.vim


set nocompatible " not compatible with vi
set history=10000 " change history to 10000; required for nocompatible

set autoread " Set to auto read when a file is changed from the outside

set wildmenu " enhanced command line completion
set showcmd " show incomplete commands
"set wildmode=list:longest " complete files like a shell
set scrolloff=3 " lines of text around cursor

"set clipboard=unnamedplus
"set title 
"set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

syntax enable " highlight syntax
set number " enabel line Numbers
set relativenumber " show relative line numbers

set wrap "turn on line wrapping
set wrapmargin=8 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
"set showbreak=… " show ellipsis at breaking

set autoindent " automatically set indent of new line
set smartindent


" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
"set hlsearch " highlight search results
set incsearch " set incremental search, like modern browsers
set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

" Status Line
set laststatus=2 " show the satus line all the time

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

" restart at same position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"filetype plugin on

" FINDING FILES:
" Search down into subfolders
"set path+=**

" PASTE Mode
set pastetoggle=<F3>

" ---------------------------------------------------------
" => Files, backups, and undo
" ---------------------------------------------------------
set nobackup
set nowritebackup
set noswapfile
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" ---------------------------------------------------------
" --> Maping <-- 
" ---------------------------------------------------------

" remap Leader key
let mapleader=","

" Escape with "fd"
:inoremap fd <Esc>

" toggle invisible characters
"set invlist
"set listchars=tab:▸\ ,eol:⌝,trail:⋅,extends:❯,precedes:❮
highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying
"set showbreak=↪
nmap <F4> :set list!<cr>

" Textmate style indentation
"vmap <leader>[ <gv
"vmap <leader>] >gv
"nmap <leader>[ <<
"nmap <leader>] >>




" ---------------------------------------------------------
" --> PLUGINS-Declaration <-- 
" ---------------------------------------------------------

" some required stuff...
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" ... now the real Plugin-Definition begins ...


" --> PLUGINS and Options
" ------------------------

"" CtrlP PLugin
"Plugin 'ctrlp.vim'
"let g:ctrlp_show_hidden=1 " show hidden files
"let g:ctrlp_working_path_mode = 'ra' " working dir

"" NerdTree Plugin
"Plugin 'nerdtree'
"map <F5> :NERDTree<CR> " map NERDTree
""close vim if NERDTree is the only instans left
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let NERDTreeQuitOnOpen=1 " close NERDTree after opening file
"let NERDTreeShowHidden=1 " show hidden files


Plugin 'tpope/vim-surround'

Plugin 'rafi/awesome-vim-colorschemes'



"" Clojure REPL
"Plugin 'vim-fireplace'

"" Paredit for Vim
"Plugin 'paredit.vim'

"" Clojure highlights
"Plugin 'vim-clojure-static'
"let g:clojure_syntax_keywords = {
"    \ 'clojureFunc': ["string/join", "string/replace"],
"    \ 'clojureDefine': ["def"],
"    \ 'clojureMacro': ["if", "do"]
"    \ }
"Plugin 'vim-clojure-highlight'

"" Rainbow breckets
"Plugin 'rainbow_parentheses.vim'
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

" ------------------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" ----------------------------------------------------------




" ----------------------------------------------------------
" Colorstuff
"
" cterm-colors
" ------------
" NR-16   NR-8    COLOR NAME
" 0       0       Black
" 1       4       DarkBlue
" 2       2       DarkGreen
" 3       6       DarkCyan
" 4       1       DarkRed
" 5       5       DarkMagenta
" 6       3       Brown, DarkYellow
" 7       7       LightGray, LightGrey, Gray, Grey
" 8       0*      DarkGray, DarkGrey
" 9       4*      Blue, LightBlue
" 10      2*      Green, LightGreen
" 11      6*      Cyan, LightCyan
" 12      1*      Red, LightRed
" 13      5*      Magenta, LightMagenta
" 14      3*      Yellow, LightYellow
" 15      7*      White
" ----------------------
hi Comment ctermfg=8

" hi Constant ctermfg=5
hi String ctermfg=2
" "hi Character ctermfg=2
hi Number ctermfg=6
hi Boolean ctermfg=13
" hi Float ctermfg=13

" "hi Identifier ctermfg=white
hi Function ctermfg=5

hi Statement ctermfg=4
hi Conditional ctermfg=6
" "hi Repeat ctermfg=4
" "hi Label ctermfg=white
" "hi Operator ctermfg=4
" "hi Keyword ctermfg=white
" "hi Exception ctermfg=4

" "hi PreProc ctermfg=white
" "hi Include ctermfg=14
" hi Define ctermfg=white
" "hi Macro ctermfg=14
" "hi PreCondit ctermfg=white

" hi Type ctermfg=15
"hi StorageClass ctermfg=15
"hi Structure ctermfg=15
"hi Typedef ctermfg=15
"
"hi Special ctermfg=15
"hi SpecialChar ctermfg=15
"hi Tag ctermfg=15
"hi Delimiter ctermfg=15
"hi SpecialComment ctermfg=15
"hi Debug ctermfg=15
"
"hi Underlined ctermfg=15
"hi Ignore ctermfg=15
"hi Error ctermfg=15
"hi Todo ctermfg=15

hi LineNr  ctermfg=8
hi CursorLineNr  ctermfg=15
"
"---------------------------------------------------------

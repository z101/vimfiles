" Run commands

au FileType xml setlocal foldmethod=syntax
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif " exit Vim if NERDTree is the only window remaining in the only tab
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif " close the tab if NERDTree is the only window remaining in it
cnoreabbrev vc exe 'edit '$MYVIMRC
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
hi User1 ctermbg=196 ctermfg=white guibg=red guifg=white " term window highlighting
language messages en_US.UTF-8 " english language UI
syntax on " syntax highlighting

" Set options

set backspace=indent,eol,start " bakspacing over indent, eol
set cinoptions=(0 " indent params under function brace
set clipboard+=unnamed " Add the unnamed register to the clipboard
set confirm " enable confirmation when switch between buffers
set cursorline " highlight the cursor line
set encoding=utf-8
set foldenable
set foldmethod=indent
set guifont=Terminus\ 9 " use cool terminus font
set guioptions+=LlRrb "remove scroll bar 
set guioptions-=LlRrb "remove scroll bar 
set guioptions-=T "remove toolbar 
set guioptions-=m "remove menu bar 
set hlsearch " search highlight
set incsearch " enable increment search
set keymap=russian-jcukenwin " not breakable russian layout
set laststatus=2 " tell VIM to always put a status line in, even if there is only one window
set mousehide " hide the mouse pointer while typing
set nobackup " stop making a backup before overwriting a file
set nocp
set noeb vb t_vb= " no bell, no visualbell
set noswapfile
set noundofile
set number
set omnifunc=syntaxcomplete#Complete
set shiftwidth=4 " set tab = 4 spaces
set shortmess+=I " hide welcome text
set showcmd " show entering command
set showtabline=0 " never show tab panel
set smartindent
set stl=%f\ %m\ %r\ %=[#%n]\ %5.5l,%-5.5c\ [%3.3p%%]\ [%3.3b][0x%2.2B] " set the status line format
set tabstop=4 " set tab = 4 spaces

" Set default en layout

set iminsert=0
set imsearch=0

" Set global variables

let g:markdown_folding=1
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_special_syntax = 1
let g:snipMate = { 'snippet_version' : 1 } " snipmate
let g:xml_syntax_folding=1
let g:zfontsize = 12
let mapleader = ","

" Set custom conditions

if has("gui_win32")
	set guifont=Terminus:h12:cDEFAULT 
	set showtabline=2 " always show tab panel

	set background=light

	hi clear
	if exists("syntax_on")
	  syntax reset
	endif

	hi Comment guifg=#a0b0c0 gui=NONE
	hi Conditional guifg=#4c8f2f gui=NONE
	hi Constant guifg=#a07040
	hi Cursor guifg=black guibg=#b0b4b8
	hi CursorColumn guibg=#eaeaea
	hi CursorLine guibg=#f6f6f6
	hi Define guifg=#1060a0 gui=NONE
	hi DiffAdd guifg=NONE guibg=#c0e0d0 gui=NONE
	hi DiffChange guifg=NONE guibg=#e0e0e0 gui=NONE
	hi DiffDelete guifg=NONE guibg=#f0e0b0 gui=NONE
	hi DiffText guifg=NONE guibg=#f0c8c8 gui=NONE
	hi Error guifg=red guibg=white gui=NONE
	hi Float guifg=#70a040
	hi Folded guifg=#a0a0a0 guibg=#e8e8e8 gui=NONE
	hi Function guifg=#06287e gui=NONE
	hi Identifier guifg=#5b3674 gui=NONE
	hi LineNr guifg=#ffffff guibg=#c0d0e0
	hi MatchParen guifg=white guibg=#80a090 gui=NONE
	hi NonText guifg=#c0c0c0 guibg=#e0e0e0
	hi Normal guifg=#404850 guibg=#f0f0f0
	hi Number guifg=#40a070
	hi Operator guifg=#408010
	hi Pmenu guifg=white guibg=#808080
	hi PreProc guifg=#1060a0 gui=NONE
	hi Repeat guifg=#7fbf58 gui=NONE
	hi Special guifg=#70a0d0 gui=NONE
	hi SpecialKey guifg=#d0b0b0 guibg=#f0f0f0 gui=none
	hi Statement guifg=#007020 gui=NONE
	hi StatusLine guifg=white guibg=#8090a0 gui=NONE
	hi StatusLineNC guifg=#506070 guibg=#a0b0c0 gui=NONE
	hi String guifg=#4070a0 
	hi Structure guifg=#007020 gui=NONE
	hi TabLine guifg=black guibg=#b0b8c0 gui=NONE
	hi TabLineFill guifg=#9098a0
	hi TabLineSel guifg=black guibg=#f0f0f0 gui=NONE
	hi Title guifg=#202020 gui=NONE
	hi Todo guifg=#a0b0c0 guibg=NONE gui=NONE
	hi Type guifg=#e5a00d gui=NONE
	hi Underlined guifg=#202020 gui=underline
	hi VertSplit guifg=#a0b0c0 guibg=#a0b0c0 gui=NONE
	hi lCursor guifg=black guibg=#b0b4b8
endif

if $TERM == 'xterm-256color'
	set t_Co=256 " 256 colors support

	set background=dark
	hi clear

	if exists("syntax_on")
	  syntax reset
	endif

	hi Comment ctermfg=244 guifg=#808080
	hi Constant ctermfg=229 guifg=#ffffaf
	hi Cursor ctermbg=214 guibg=#ffaf00
	hi CursorColumn ctermbg=238 guibg=#444444
	hi CursorLine ctermbg=236 guibg=#303030 cterm=none 
	hi CursorLineNr cterm=bold ctermfg=250 ctermbg=236
	hi Directory ctermfg=110 guifg=#87afdf cterm=none
	hi Error ctermfg=15 guifg=#ffffff ctermbg=88 guibg=#870000
	hi ErrorMsg ctermfg=15 guifg=#ffffff ctermbg=88 guibg=#870000
	hi FoldColumn ctermfg=247 guifg=#9e9e9e ctermbg=233 guibg=#121212
	hi Folded ctermfg=255 guifg=#eeeeee ctermbg=60 guibg=#5f5f87
	hi Identifier ctermfg=182 guifg=#dfafdf cterm=none
	hi Ignore ctermfg=238 guifg=#444444
	hi IncSearch ctermfg=0 guifg=#000000 ctermbg=223 guibg=#ffdfaf cterm=none 
	hi LineNr ctermfg=240 guifg=#585858 ctermbg=234 guibg=#1c1c1c
	hi MatchParen ctermfg=188 guifg=#d7d7d7 ctermbg=68 guibg=#5f87d7 cterm=bold gui=bold
	hi MoreMsg ctermfg=77 guifg=#5fd75f
	hi NonText ctermfg=247 guifg=#9e9e9e ctermbg=none guibg=#202020 cterm=bold gui=bold
	hi Normal ctermfg=252 guifg=#d0d0d0 ctermbg=none guibg=#202020 cterm=none 
	hi Number ctermfg=180 guifg=#dfaf87
	hi Pmenu ctermfg=0 guifg=#000000 ctermbg=250 guibg=#bcbcbc
	hi PmenuSbar ctermbg=252 guibg=#d0d0d0
	hi PmenuSel ctermfg=255 guifg=#eeeeee ctermbg=243 guibg=#767676
	hi PmenuThumb ctermfg=243 guifg=#767676
	hi PreProc ctermfg=150 guifg=#afdf87
	hi Question ctermfg=77 guifg=#5fd75f
	hi Search ctermfg=236 guifg=#303030 ctermbg=246 guibg=#949494
	hi SignColumn ctermfg=248 guifg=#a8a8a8
	hi Special ctermfg=174 guifg=#df8787
	hi SpecialKey ctermfg=77 guifg=#5fd75f
	hi SpellBad ctermfg=160 guifg=#d70000 ctermbg=none cterm=underline guisp=#df0000
	hi SpellCap ctermfg=189 guifg=#dfdfff ctermbg=none guibg=#303030 cterm=underline gui=underline
	hi SpellLocal ctermfg=98 guifg=#875fdf ctermbg=none guibg=#303030 cterm=underline gui=underline
	hi SpellRare ctermfg=168 guifg=#df5f87 ctermbg=none guibg=#303030 cterm=underline gui=underline
	hi Statement ctermfg=110 guifg=#87afdf cterm=none 
	hi StatusLine ctermfg=232 guifg=#303030 ctermbg=246 guibg=#949494 cterm=reverse gui=reverse
	hi StatusLineNC ctermfg=236 guifg=#303030 ctermbg=240 guibg=#585858
	hi StatusLineTerm ctermfg=250 ctermbg=22 
	hi StatusLineTermNC ctermfg=236 ctermbg=240
	hi TabLine ctermfg=fg guifg=fg ctermbg=242 guibg=#666666
	hi TabLineFill ctermfg=fg guifg=fg ctermbg=237 guibg=#3a3a3a
	hi Title ctermfg=225 guifg=#ffdfff
	hi Todo ctermfg=0 guifg=#000000 ctermbg=184 guibg=#dfdf00
	hi Type ctermfg=146 guifg=#afafdf cterm=none 
	hi Underlined ctermfg=39 guifg=#00afff cterm=underline gui=underline
	hi VertSplit ctermfg=236 guifg=#303030 ctermbg=236 guibg=#303030 cterm=none 
	hi Visual ctermfg=255 guifg=#eeeeee ctermbg=96 guibg=#875f87
	hi VisualNOS ctermfg=255 guifg=#eeeeee ctermbg=60 guibg=#5f5f87
	hi WildMenu ctermfg=0 guifg=#000000 ctermbg=150 guibg=#afdf87 cterm=bold gui=bold
	hi diffAdded ctermfg=150 guifg=#afdf87
	hi diffRemoved ctermfg=174 guifg=#df8787
	hi htmlArg ctermfg=182 guifg=#dfafdf
	hi htmlEndTag ctermfg=244
	hi htmlTag ctermfg=244
	hi htmlTitle ctermfg=254 ctermbg=95
	hi htmlValue ctermfg=187 guifg=#dfdfaf
	hi pythonExceptions ctermfg=174
endif

if $USER == 'root'
	set stl=%1*\ root %*\%f\ %m\ %r\ %=[#%n]\ %5.5l,%-5.5c\ [%3.3p%%]\ [%3.3b][0x%2.2B] " set root status line format
endif

" Set custom commands

map <Leader>f :let @/=expand("%:t") <Bar> execute 'Vexplore' expand("%:h") <Bar> normal n<CR>

nnoremap <S-A-down> :m .+1<CR>==
nnoremap <S-A-up> :m .-2<CR>==

inoremap <S-A-down> <Esc>:m .+1<CR>==gi
inoremap <S-A-up> <Esc>:m .-2<CR>==gi

vnoremap <S-A-down> :m '>+1<CR>gv=gv
vnoremap <S-A-up> :m '<-2<CR>gv=gv

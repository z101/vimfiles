" Pathogen

execute pathogen#infect()

" Run commands

au FileType xml setlocal foldmethod=syntax
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif " exit Vim if NERDTree is the only window remaining in the only tab
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif " close the tab if NERDTree is the only window remaining in it
cnoreabbrev vc exe 'edit '.expand(g:VimFilesDir).'/vimconfig.vim'
filetype on
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
set guifont=Terminus\ 9 " use cool terminus font
set guioptions+=LlRrb "remove scroll bar 
set guioptions-=LlRrb "remove scroll bar 
set guioptions-=T "remove toolbar 
set guioptions-=m "remove menu bar 
set incsearch " enable increment search
set keymap=russian-jcukenwin " not breakable russian layout
set laststatus=2 " tell VIM to always put a status line in, even if there is only one window
set mousehide " hide the mouse pointer while typing
set nobackup " stop making a backup before overwriting a file
set noeb vb t_vb= " no bell, no visualbell
set nohlsearch " highlight found matches
set noswapfile
set noundofile
set shiftwidth=4 " set tab = 4 spaces
set shortmess+=I " hide welcome text
set showcmd " show entering command
set showtabline=0 " never show tab panel
set stl=%f\ %m\ %r\ %=[#%n]\ %5.5l,%-5.5c\ [%3.3p%%]\ [%3.3b][0x%2.2B] " set the status line format
set tabstop=4 " set tab = 4 spaces

" Set default en layout

set iminsert=0
set imsearch=0

" Set global variables

let g:snipMate = { 'snippet_version' : 1 } " snipmate
let g:xml_syntax_folding=1
let g:zfontsize = 12

" Set custom conditions

if has("gui_win32")
	cnoreabbrev fx exe '% !"'.expand(g:VimFilesDir).'/externaltools/xmllint-1.0.exe" % --format'
	colorscheme pyte " custom color scheme

	set guifont=Terminus:h12:cDEFAULT 
	set showtabline=2 " always show tab panel
endif

if $TERM == 'xterm-256color'
	set t_Co=256 " 256 colors support
	colorscheme dark " custom color scheme
endif

if $USER == 'root'
	set stl=%1*\ root %*\%f\ %m\ %r\ %=[#%n]\ %5.5l,%-5.5c\ [%3.3p%%]\ [%3.3b][0x%2.2B] " set root status line format
endif

" KB
":set invnumber<CR> - toggle row numbers

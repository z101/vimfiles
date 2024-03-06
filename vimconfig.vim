let g:zfontsize = 12
let g:netrw_browse_split = 3

set encoding=utf-8

" Switch off Swap / Backup / Undo
set noswapfile
set nobackup
set noundofile

" Pathogen

execute pathogen#infect()

" Filetype stuff

syntax on
filetype on
filetype plugin indent on

" GUI

if has("gui_win32")
	colorscheme pyte " custom color scheme
	language messages en " english language UI

	set guifont=Terminus:h12:cDEFAULT 
	set showtabline=2 " always show tab panel

	let NERDTreeIgnore = ['\.DAT$[[file]]', '\.LOG1$[[file]]', '\.LOG2$[[file]]', '\c^ntuser\..*']

	autocmd FileType python map <buffer> <F9> :w<CR>:exec '!C:\Users\Ilya_Gordeev\AppData\Local\Programs\Python\Python311\python.exe' shellescape(@%, 1)<CR>
	autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!C:\Users\Ilya_Gordeev\AppData\Local\Programs\Python\Python311\python.exe' shellescape(@%, 1)<CR>

	cnoreabbrev fx exe '% !"'.expand(g:VimFilesDir).'/externaltools/xmllint-1.0.exe" % --format'
elseif has("gui_gtk2")
	colorscheme dark

	set showtabline=0 " never show tab panel
	set guifont=Terminus\ 9 " use cool terminus font
else
endif

if has("gui_running")
	"au GUIEnter * simalt ~x " full screen
	
	set guioptions-=m "remove menu bar 
	set guioptions-=T "remove toolbar 
	set guioptions+=LlRrb "remove scroll bar 
	set guioptions-=LlRrb "remove scroll bar 
else
	colorscheme dark " custom color scheme
	
	set showtabline=0 " never show tab panel
endif

" Common

syntax on " syntax highlighting

hi User1 ctermbg=196 ctermfg=white guibg=red guifg=white

let mapleader=',' " change default mapleader


set t_Co=256 " 256 colors support
set cursorline " highlight the cursor line
"set virtualedit=all " ability to move cusor everywhere
set stl=
if $USER == 'root'
	set stl=%1*\ root\ 
	set stl+=%*
	set stl+=\ 
endif
set stl+=%f\ %m\ %r\ %=[#%n]\ %5.5l,%-5.5c\ [%3.3p%%]\ [%3.3b][0x%2.2B] " set the status line the way i like it
set laststatus=2 " tell VIM to always put a status line in, even if there is only one window
set shortmess+=I " hide welcome text
set showcmd " show entering command
set nohlsearch " highlight found matches
set incsearch " enable increment search
set tabstop=4 " set tab = 4 spaces
set shiftwidth=4 " set tab = 4 spaces
set confirm " enable confirmation when switch between buffers
set keymap=russian-jcukenwin " not breakable russian layout
set iminsert=0 " not breakable russian layout
set imsearch=0 " not breakable russian layout
set backspace=indent,eol,start " bakspacing over indent, eol
set cinoptions=(0 " indent params under function brace
set noeb vb t_vb= " no bell, no visualbell
set mousehide " hide the mouse pointer while typing
set clipboard+=unnamed " Add the unnamed register to the clipboard

noremap <F3> :set invnumber<CR>
noremap <F8> :call ToggleFontSize()<CR>

let g:NERDTreeMinimalUI = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

cnoreabbrev vc exe 'edit '.expand(g:VimFilesDir).'/vimconfig.vim'

" XML folding

let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

function ToggleFontSize()
	if ( g:zfontsize == 12 )
		let g:zfontsize = 18
	else
		let g:zfontsize = 12
	endif
	execute "set guifont=Terminus:h".g:zfontsize.":cDEFAULT"
endfunction

" SnipMate

let g:snipMate = { 'snippet_version' : 1 }

" ARCHIVE
"
"autocmd BufEnter * silent! lcd %:p:h " default dir changed to current file parent
"
"" C IDE settings
"
""change default mapleader
"let g:C_MapLeader = ','
"
"" SnipMate settings
"
"Function! ReloadSnippets( snippets_dir, ft )
"	if strlen( a:ft ) == 0
"		let filetype = "_"
"	else
"		let filetype = a:ft
"	endif
"
"	call ResetSnippets()
"	call GetSnippets( a:snippets_dir, filetype )
"endfunction
"
"nmap ,rsn :call ReloadSnippets(snippets_dir, &filetype)<CR>

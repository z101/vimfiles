if &t_Co != 256 && ! has("gui_running")
  echomsg ""
  echomsg "err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)"
  echomsg ""
  finish
endif

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "dark"
"}}}
" Colours {{{1
"" General {{{2
hi Normal       ctermfg=252 guifg=#d0d0d0 ctermbg=none guibg=#202020 cterm=none 
hi Cursor                                 ctermbg=214 guibg=#ffaf00
hi CursorColumn                           ctermbg=238 guibg=#444444
hi CursorLine                             ctermbg=236 guibg=#303030 cterm=none 
hi CursorLineNr ctermfg=248 guifg=#a8a8a8 ctermbg=236 guibg=#303030
hi Error        ctermfg=15  guifg=#ffffff ctermbg=88  guibg=#870000
hi ErrorMsg     ctermfg=15  guifg=#ffffff ctermbg=88  guibg=#870000
hi FoldColumn   ctermfg=247 guifg=#9e9e9e ctermbg=233 guibg=#121212
hi Folded       ctermfg=255 guifg=#eeeeee ctermbg=60  guibg=#5f5f87
hi IncSearch    ctermfg=0   guifg=#000000 ctermbg=223 guibg=#ffdfaf cterm=none 
hi LineNr       ctermfg=240 guifg=#585858 ctermbg=234 guibg=#1c1c1c
hi MatchParen   ctermfg=188 guifg=#d7d7d7 ctermbg=68  guibg=#5f87d7 cterm=bold gui=bold
" TODO
hi MoreMsg      ctermfg=77  guifg=#5fd75f
hi Question     ctermfg=77  guifg=#5fd75f
hi NonText      ctermfg=247 guifg=#9e9e9e ctermbg=none guibg=#202020 cterm=bold gui=bold
hi Pmenu        ctermfg=0   guifg=#000000 ctermbg=250 guibg=#bcbcbc
hi PmenuSel     ctermfg=255 guifg=#eeeeee ctermbg=243 guibg=#767676
hi PmenuSbar                              ctermbg=252 guibg=#d0d0d0
hi PmenuThumb   ctermfg=243 guifg=#767676
hi Search       ctermfg=236 guifg=#303030 ctermbg=246 guibg=#949494
hi SignColumn   ctermfg=248 guifg=#a8a8a8
hi SpecialKey   ctermfg=77  guifg=#5fd75f
hi SpellBad     ctermfg=160 guifg=#d70000 ctermbg=none                cterm=underline               guisp=#df0000
hi SpellCap     ctermfg=189 guifg=#dfdfff ctermbg=none  guibg=#303030      cterm=underline gui=underline
hi SpellRare    ctermfg=168 guifg=#df5f87 ctermbg=none  guibg=#303030 cterm=underline gui=underline
hi SpellLocal   ctermfg=98  guifg=#875fdf ctermbg=none  guibg=#303030      cterm=underline gui=underline
hi StatusLine   ctermfg=232 guifg=#303030 ctermbg=246 guibg=#949494 gui=reverse cterm=reverse
hi StatusLineNC ctermfg=236 guifg=#303030 ctermbg=240 guibg=#585858
hi TabLine      ctermfg=fg  guifg=fg      ctermbg=242 guibg=#666666
hi TabLineFill  ctermfg=fg  guifg=fg      ctermbg=237 guibg=#3a3a3a
" FIXME
hi Title        ctermfg=225 guifg=#ffdfff
hi Todo         ctermfg=0   guifg=#000000 ctermbg=184 guibg=#dfdf00
hi Underlined   ctermfg=39  guifg=#00afff                           cterm=underline gui=underline
hi VertSplit    ctermfg=236 guifg=#303030 ctermbg=236 guibg=#303030 cterm=none 
" hi VIsualNOS    ctermfg=24  guifg=#005f87 ctermbg=153 guibg=#afdfff cterm=none 
" hi Visual       ctermfg=24  guifg=#005f87 ctermbg=153 guibg=#afdfff
hi Visual       ctermfg=255 guifg=#eeeeee ctermbg=96  guibg=#875f87
" hi Visual       ctermfg=255 guifg=#eeeeee ctermbg=24  guibg=#005f87
hi VisualNOS    ctermfg=255 guifg=#eeeeee ctermbg=60  guibg=#5f5f87
hi WildMenu     ctermfg=0   guifg=#000000 ctermbg=150 guibg=#afdf87 cterm=bold gui=bold

"" Syntax highlighting {{{2
hi Comment      ctermfg=244 guifg=#808080
hi Constant     ctermfg=229 guifg=#ffffaf
hi Identifier   ctermfg=182 guifg=#dfafdf                           cterm=none
hi Ignore       ctermfg=238 guifg=#444444
hi Number       ctermfg=180 guifg=#dfaf87
hi PreProc      ctermfg=150 guifg=#afdf87
hi Special      ctermfg=174 guifg=#df8787
hi Statement    ctermfg=110 guifg=#87afdf                           cterm=none 
hi Type         ctermfg=146 guifg=#afafdf                           cterm=none 

"" Special {{{2
""" .diff {{{3
hi diffAdded    ctermfg=150 guifg=#afdf87
hi diffRemoved  ctermfg=174 guifg=#df8787
""" vimdiff {{{3
"hi diffAdd      ctermfg=none  guifg=none      ctermbg=151 guibg=#afdfaf
"hi diffDelete   ctermfg=bg  guifg=none      ctermbg=186 guibg=#dfdf87 cterm=none 
"hi diffDelete   ctermfg=none  guifg=none      ctermbg=246 guibg=#949494 cterm=none 
"hi diffChange   ctermfg=none  guifg=none      ctermbg=181 guibg=#dfafaf
"hi diffText     ctermfg=none  guifg=none      ctermbg=174 guibg=#df8787 cterm=none 
""" HTML {{{3
" hi htmlTag      ctermfg=146  guifg=#afafdf
" hi htmlEndTag   ctermfg=146  guifg=#afafdf
hi htmlTag      ctermfg=244
hi htmlEndTag   ctermfg=244
hi htmlArg	ctermfg=182  guifg=#dfafdf
hi htmlValue	ctermfg=187  guifg=#dfdfaf
hi htmlTitle	ctermfg=254  ctermbg=95
" hi htmlArg	ctermfg=146
" hi htmlTagName	ctermfg=146
" hi htmlString	ctermfg=187
""" django {{{3
hi djangoVarBlock ctermfg=180
hi djangoTagBlock ctermfg=150
hi djangoStatement ctermfg=146
hi djangoFilter ctermfg=174
""" python {{{3
hi pythonExceptions ctermfg=174
""" NERDTree {{{3
hi Directory      ctermfg=110  guifg=#87afdf
hi treeCWD        ctermfg=180  guifg=#dfaf87
hi treeClosable   ctermfg=174  guifg=#df8787
hi treeOpenable   ctermfg=150  guifg=#afdf87
hi treePart       ctermfg=244  guifg=#808080
hi treeDirSlash   ctermfg=244  guifg=#808080
hi treeLink       ctermfg=182  guifg=#dfafdf

""" VimDebug {{{3
" FIXME
" you may want to set SignColumn highlight in your .vimrc
" :help sign
" :help SignColumn

" hi currentLine term=reverse cterm=reverse gui=reverse
" hi breakPoint  term=NONE    cterm=NONE    gui=NONE
" hi empty       term=NONE    cterm=NONE    gui=NONE

" sign define currentLine linehl=currentLine
" sign define breakPoint  linehl=breakPoint  text=>>
" sign define both        linehl=currentLine text=>>
" sign define empty       linehl=empty


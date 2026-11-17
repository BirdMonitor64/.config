" amber_phosphorus.vim — monochrome amber CRT
" Place in ~/.vim/colors/ and use :colorscheme amber_phosphorus

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'amber_phosphorus'
set background=dark

" GUI colors use several amber intensities; terminal colors stay monochrome.
if has('gui_running') || &termguicolors
  let s:bg      = '#120B02'
  let s:amber   = '#FFB000'
  let s:bright  = '#FFD36A'
  let s:dim     = '#8A5C12'
  let s:select  = '#49300B'
  let s:line    = '#241604'
  let s:warning = '#FFD36A'
  let s:error   = '#FFB000'

  execute 'hi Normal       guifg=' . s:amber  . ' guibg=' . s:bg
  execute 'hi Comment      guifg=' . s:dim    . ' gui=italic'
  execute 'hi Constant     guifg=' . s:bright
  execute 'hi String       guifg=' . s:bright
  execute 'hi Character    guifg=' . s:bright
  execute 'hi Identifier   guifg=' . s:amber
  execute 'hi Statement    guifg=' . s:bright  . ' gui=bold'
  execute 'hi Keyword      guifg=' . s:bright  . ' gui=bold'
  execute 'hi PreProc      guifg=' . s:amber   . ' gui=bold'
  execute 'hi Type         guifg=' . s:bright
  execute 'hi Special      guifg=' . s:bright
  execute 'hi Underlined   guifg=' . s:bright  . ' gui=underline'
  execute 'hi Todo         guifg=' . s:bg      . ' guibg=' . s:bright . ' gui=bold'
  execute 'hi Error        guifg=' . s:error   . ' guibg=' . s:bg     . ' gui=bold,underline'
  execute 'hi WarningMsg   guifg=' . s:warning . ' gui=bold'

  execute 'hi CursorLine   guibg=' . s:line
  execute 'hi CursorColumn guibg=' . s:line
  execute 'hi LineNr       guifg=' . s:dim
  execute 'hi CursorLineNr guifg=' . s:bright  . ' gui=bold'
  execute 'hi Visual       guifg=' . s:bright  . ' guibg=' . s:select
  execute 'hi Search       guifg=' . s:bg      . ' guibg=' . s:bright . ' gui=bold'
  execute 'hi IncSearch    guifg=' . s:bg      . ' guibg=' . s:amber  . ' gui=bold'
  execute 'hi MatchParen   guifg=' . s:bright  . ' guibg=' . s:select . ' gui=bold'

  execute 'hi StatusLine   guifg=' . s:bright  . ' guibg=' . s:select . ' gui=bold'
  execute 'hi StatusLineNC guifg=' . s:dim     . ' guibg=' . s:bg
  execute 'hi VertSplit    guifg=' . s:dim     . ' guibg=' . s:bg
  execute 'hi Pmenu        guifg=' . s:amber   . ' guibg=' . s:line
  execute 'hi PmenuSel     guifg=' . s:bright  . ' guibg=' . s:select . ' gui=bold'
  execute 'hi ColorColumn  guibg=' . s:line
  execute 'hi Folded       guifg=' . s:dim     . ' guibg=' . s:line
else
  " ANSI terminal palette: all foregrounds use amber/yellow.
  hi Normal       ctermfg=Yellow ctermbg=Black
  hi Comment      ctermfg=DarkYellow cterm=italic
  hi Constant     ctermfg=Yellow cterm=bold
  hi String       ctermfg=Yellow cterm=bold
  hi Character    ctermfg=Yellow cterm=bold
  hi Identifier   ctermfg=Yellow
  hi Statement    ctermfg=Yellow cterm=bold
  hi Keyword      ctermfg=Yellow cterm=bold
  hi PreProc      ctermfg=Yellow cterm=bold
  hi Type         ctermfg=Yellow cterm=bold
  hi Special      ctermfg=Yellow cterm=bold
  hi Underlined   ctermfg=Yellow cterm=underline
  hi Todo         ctermfg=Black ctermbg=Yellow cterm=bold
  hi Error        ctermfg=Yellow ctermbg=Black cterm=bold,underline
  hi WarningMsg   ctermfg=Yellow cterm=bold

  hi CursorLine   ctermbg=DarkYellow
  hi CursorColumn ctermbg=DarkYellow
  hi LineNr       ctermfg=DarkYellow ctermbg=Black
  hi CursorLineNr ctermfg=Yellow ctermbg=Black cterm=bold
  hi Visual       ctermfg=Yellow ctermbg=DarkYellow
  hi Search       ctermfg=Black ctermbg=Yellow cterm=bold
  hi IncSearch    ctermfg=Black ctermbg=Yellow cterm=bold
  hi MatchParen   ctermfg=Yellow ctermbg=DarkYellow cterm=bold

  hi StatusLine   ctermfg=Yellow ctermbg=DarkYellow cterm=bold
  hi StatusLineNC ctermfg=DarkYellow ctermbg=Black
  hi VertSplit    ctermfg=DarkYellow ctermbg=Black
  hi Pmenu        ctermfg=Yellow ctermbg=Black
  hi PmenuSel     ctermfg=Yellow ctermbg=DarkYellow cterm=bold
  hi ColorColumn  ctermbg=DarkYellow
  hi Folded       ctermfg=DarkYellow ctermbg=Black
endif

" Keep non-text UI elements in the same amber phosphor palette.
hi! link NonText Comment
hi! link SpecialKey Comment
hi! link EndOfBuffer Comment
hi! link Directory Statement
hi! link DiffAdd String
hi! link DiffChange Comment
hi! link DiffDelete Error
hi! link DiffText Statement


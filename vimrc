call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

if &term == "xterm"
    set t_Co=256
endif
syntax on
colorscheme desert256
filetype plugin on
autocmd BufNewFile,BufRead *.txt,*.htm,*.html,README,README.* set spell
if (v:version >= 700) 
	highlight SpellBad      ctermfg=white       ctermbg=red
endif " version 7+
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

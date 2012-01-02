call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
colorscheme desert
filetype plugin on
autocmd BufNewFile,BufRead *.txt,*.htm,*.html,README,README.* set spell
if (v:version >= 700) 
	highlight SpellBad      ctermfg=white       ctermbg=red
endif " version 7+

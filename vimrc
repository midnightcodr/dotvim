call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
colorscheme desert
filetype plugin on
autocmd BufNewFile,BufRead *.txt,*.htm,*.html,README,README.* set spell

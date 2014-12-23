set tabstop=4 shiftwidth=4 softtabstop=4
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

if &term == "xterm"
    set t_Co=256
endif
syntax on
if ( $ITERM_PROFILE == "light" )
	colorscheme solarized
	set background=light
else
	colorscheme wombat256mod
endif
filetype plugin on
autocmd BufNewFile,BufRead *.txt,*.htm,*.html,README,README.* set spell
if (v:version >= 700) 
	highlight SpellBad      ctermfg=white       ctermbg=red
endif " version 7+
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
set hlsearch
noremap <silent> <Space> :set hlsearch! hlsearch?<CR>
command Jslint !jslint --white --eqeq %
nnoremap <leader>j :Jslint<CR>
au BufNewFile,BufRead *.tpl set filetype=tpl
au BufNewFile,BufRead *.php set filetype=php.html

" require jshint (node) installed
nmap <F4> :w<CR>:make<CR>:cw<CR>
set number
highlight clear SignColumn
map <c-f> :call JsBeautify()<cr>
" workaround for mac osx vim
" https://github.com/maksimr/vim-jsbeautify/issues/46
let g:config_Beautifier = {}
let g:config_Beautifier['js'] = {}
let g:config_Beautifier['js'].indent_style = 'tab'
let g:config_Beautifier['js'].indent_size = '4'
set smartindent
let delimitMate_expand_cr = 1
filetype indent plugin on

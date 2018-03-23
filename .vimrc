" ===============================================================
" .vimrc
" ===============================================================
" no compatibility with old versions
" of vi, must be one of the first directives
set nocompatible

" cf. https://github.com/nightsense/vimspectr
call plug#begin('~/.vim/plugged')
" color scheme with variations
Plug 'nightsense/vimspectr'
" NerdTree !!!
Plug 'scrooloose/nerdtree'
" NerdTree plugin which show git differences
Plug 'Xuyuanp/nerdtree-git-plugin'
" a gutter with symbols showing deltas
Plug 'airblade/vim-gitgutter'
" show trailing spaces
Plug 'bronson/vim-trailing-whitespace'
" zen mode
Plug 'junegunn/goyo.vim'
" git plugin
Plug 'tpope/vim-fugitive'
" markdown plugin
Plug 'plasticboy/vim-markdown'

Plug 'reedes/vim-pencil'
" source explorer
Plug 'wesleyche/SrcExpl'

Plug 'vim-syntastic/syntastic'
call plug#end()
" ---------------------------------------------------------------
" basic configuration
" ---------------------------------------------------------------
" show line numbers
set number

" tabulations
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" bells
set noerrorbells
set visualbell
set t_vb=

filetype plugin on
" ---------------------------------------------------------------
" user interface
" ---------------------------------------------------------------
" cf. https://github.com/nightsense/vimspectr
let g:vimspectrMuteLineNr = 'on'
let g:vimspectrLineNr = 'off'
let g:vimspectrMuteStatusLine = 'on'
let g:vimspectrItalicComment = 'on'
colorscheme vimspectr30-dark
colorscheme vimspectr60-dark
colorscheme vimspectr300-dark
if has("gui_running")
    set guifont=Cousine\ 11
endif

" ---------------------------------------------------------------
" plugins: NerdTree
" ---------------------------------------------------------------
autocmd vimenter * NERDTree

" ---------------------------------------------------------------
" plugins: pencil
" ---------------------------------------------------------------
let g:pencil#textwidth = 78
augroup pencil
  autocmd!
  autocmd FileType text call pencil#init({'wrap': 'hard', 'autoformat': 0})
  autocmd FileType *.md call pencil#init({'wrap': 'hard', 'autoformat': 1})
augroup END

" ---------------------------------------------------------------
" plugins: Source explorer
" ---------------------------------------------------------------
" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8

" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to avoid conflicts, the Source Explorer should know what plugins
" // except itself are using buffers. And you need add their buffer names into
" // below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "_NERD_tree_"
    \ ]


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ---------------------------------------------------------------
" menus
" ---------------------------------------------------------------
source ~/.vim/menus.vim

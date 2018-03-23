" ======================================================================
" plugins.vim
" ======================================================================

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


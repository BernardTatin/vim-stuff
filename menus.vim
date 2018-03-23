" ===============================================================
" user menu
" ===============================================================
"
" menu: create a menu for normal mode,
" amenu: create a menu for all menus


" ---------------------------------------------------------------
" menu configuration
" ---------------------------------------------------------------
if exists('g:loaded_menu_configuration')
    try
        unmenu Configuration
    catch
    endtry
endif
let g:loaded_menu_configuration = 1

map <C-t> :NERDTreeToggle<CR>
amenu <silent> Configuration.Nerd&Tree<Tab>Ctrl+T :NERDTreeToggle<CR>
menu <silent> Configuration.&Cooool :Goyo<CR>
menu <silent> Configuration.Source\ Explorer :SrcExplToggle<CR>
menu Configuration.-Sep1-	:
if has("gui_running")
    menu <silent> Configuration.&Fonts :set guifont=*<CR>
endif
menu Configuration.-Sep2-	:
menu <silent> Configuration.Load\ &Menus :source ~/.vim/menus.vim<CR>
menu <silent> Configuration.Load\ &VimRC :source ~/.vimrc<CR>
menu Configuration.-Sep3-	:
menu <silent> Configuration.&Plugins\ Update :PlugUpdate<CR>
"amenu <silent> Configuration.Pencil :TogglePencil<CR>

" ---------------------------------------------------------------
" menu git
" ---------------------------------------------------------------
if exists('g:loaded_menu_git')
    try
        unmenu Git
    catch
    endtry
endif
let g:loaded_menu_git = 1

menu <silent> Git.Git\ &diff :Gdiff<CR>
menu <silent> Git.Git\ &status :Gstatus<CR>
menu <silent> Git.Git\ add\ buffer :Git add %<CR>
menu <silent> Git.Git\ add\ all :Git add --all<CR>
menu <silent> Git.Git\ &commit :Gcommit<CR>
menu Git.-Sep01-	:
menu <silent> Git.Git\ &push :Gpush<CR>
menu <silent> Git.Git\ p&ull :Gpull<CR>
menu Git.-Sep02-	:
menu <silent> Git.Git\ &log\ last\ 10 :Glog -10<CR>
menu Git.-Sep10-	:
menu Git.GitGutter :GitGutterToggle<CR>

" ---------------------------------------------------------------
" menu more edit
" ---------------------------------------------------------------
if exists('g:loaded_menu_more_edit')
    try
        unmenu More\ Edit
    catch
    endtry
endif
let g:loaded_menu_more_edit = 1

menu <silent> More\ Edit.Suppress\ EOL\ spaces :%s/[ \t]\+$//<CR>
menu More\ Edit.-Sep0-	:
menu <silent> More\ Edit.Spell\ English :set spell spelllang=en_us<CR>
menu <silent> More\ Edit.Spell\ French :set spell spelllang=fr<CR>
menu <silent> More\ Edit.No\ More\ Spell :set nospell<CR>
menu More\ Edit.-Sep1-	:
menu <silent><special> More\ Edit.Edit\ \.vimrc :e ~/.vimrc<CR>
menu <silent><special> More\ Edit.Edit\ menus\.vim :e ~/.vim/menus.vim<CR>
menu <silent> More\ Edit.Edit\ \.gitignore :e .gitignore<CR>


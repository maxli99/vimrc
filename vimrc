"{{{
" dependent on:
" <powerline font> https://github.com/powerline/fonts.git
" <ycm> need to be compiled by your self
" <unite> need to be compiled by your self
"}}}

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" set mapleader
let mapleader = ","
let g:mapleader = ","

filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

" disable VI's compatible mode..
set nocompatible


set t_Co=256

" for gvim
if has("gui_running")
    set guioptions=
    set background=dark
    hi Normal guifg=White guibg=grey20
    au GUIEnter * call MaximizeWindow()
    function! MaximizeWindow()
        silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
    endfunction
endif

" set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,default,latin1
set fileencoding=utf-8

" use chinese help
set helplang=cn

"syntax on
syntax enable

" Show line number
"set nu

" Show the cursor position all the time
set ruler

" Display incomplete commands
set showcmd

" Sets how many lines of history VIM har to remember
set history=400

" Have the mouse enabled all the time:
set mouse=v

" Do not redraw, when running macros.. lazyredraw
set lz

" Turn backup off
set nobackup
set nowb
set noswapfile

" smart backspace
set backspace=start,indent,eol

" set the command line height
set cmdheight=1
" set the status line
set laststatus=2

" fole setting
set foldenable
set foldmethod=syntax
set foldcolumn=0
set foldlevelstart=99

" status line
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\

" >> move 4 blackspace
set shiftwidth=4
" hightlight the current line
set cursorline
" remove 4 whitespace for <backspace>
set softtabstop=4
" tab length is set to 4
set tabstop=4
set expandtab
" ignore the upper when searching in text
set ignorecase smartcase
" do not wrap the scan
set nowrapscan
" jump to the current matched string when searching
set incsearch
" highlight the searched text
set hlsearch
" no bell
set noerrorbells
" no visual bell
set novisualbell
" set the bell term code to null
set t_vb=
" show the regex mode to magic mode
set magic
" let vim to watch the unsaved buffer
set hidden
" smart indent for new line
set smartindent
" indent like c
set cindent



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => key map configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set mapleader
let mapleader = ","
let g:mapleader = ","

" trip all the blankspace at the end of lines
nmap <leader>xd :%s/[ \t\r]\+$//g<CR>

" for quick quit
nmap <leader>q :q<CR>

" for window move, as which feature minibuffer provides
noremap <C-w> <C-W>w
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

"for ,, as esc
":inoremap <leader><leader> <esc>

"for quick switch to last buffer
noremap <leader>l <c-^>

" cancel the hight for searched text when press <esc>
noremap <silent> <esc> :nohlsearch<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'rosenfeld/conque-term'
Bundle 'emezeske/manpageview'
Bundle 'mattn/calendar-vim'
Bundle 'sjl/gundo.vim'
Bundle 'spiiph/vim-space'
Bundle 'c9s/gsession.vim'
Bundle 'chrisbra/NrrwRgn'
Bundle 'L9'
Bundle 'EasyMotion'
Bundle 'FuzzyFinder'
Bundle 'sudo.vim'
Bundle 'bufexplorer.zip'
Bundle 'matchit.zip'
Bundle 'Auto-Pairs'
Bundle 'Syntastic'
Bundle 'Tagbar'
Bundle 'TxtBrowser'
Bundle 'wiki.vim'
Bundle 'surround.vim'
Bundle 'template.vim'
Bundle 'genutils'
Bundle 'executevimscript'
Bundle 'Mark'
Bundle 'gnupg.vim'
Bundle 'utl.vim'
Bundle 'cscope.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'YankRing.vim'
Bundle 'Tabular'
Bundle 'vis'
Bundle 'ftplugin-for-Calendar'
Bundle 'VisIncr'
Bundle 'taglist.vim'

Bundle 'auto_mkdir'
Bundle 'gorodinskiy/vim-coloresque'
Bundle "fcitx.vim"
Bundle "vimim/vimim"
Bundle "plasticboy/vim-markdown"
Bundle "https://github.com/vim-airline/vim-airline.git"
Bundle "https://github.com/vim-airline/vim-airline-themes.git"
Bundle "https://github.com/rking/ag.vim.git"
Bundle "scrooloose/nerdtree"
Bundle "Xuyuanp/nerdtree-git-plugin"
Bundle "https://github.com/Shougo/unite.vim.git"
Bundle "Shougo/vimproc.vim"
Bundle 'DrawIt'
Bundle 'xolox/vim-easytags'
Bundle 'https://github.com/junegunn/vim-easy-align.git'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Yggdroot/indentLine'
Bundle 'vim-misc'
Bundle 'Valloric/ListToggle'
Bundle 'kshenoy/vim-signature'
Bundle 'airblade/vim-gitgutter'



Bundle 'Valloric/YouCompleteMe'
Bundle 'rdnetto/YCM-Generator'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'header.vim'

Bundle 'a.vim'
Bundle 'c-standard-functions-highlight'
Bundle 'c.vim'

Bundle 'klen/python-mode'


Bundle 'phpcomplete.vim'
Bundle 'php.vim--Garvin'
Bundle 'php_localvarcheck.vim'
Bundle 'joonty/vim-phpqa'


Bundle 'vim-jsbeautify'
Bundle 'ternjs/tern_for_vim'
Bundle 'michalliu/jsoncodecs.vim'
Bundle 'michalliu/jsruntime.vim'
Bundle 'michalliu/sourcebeautify.vim'
Bundle 'nono/jquery.vim'
Bundle 'pangloss/vim-javascript'


Bundle 'CSS-2.1-Specification'

Bundle 'mattn/emmet-vim'
Bundle 'othree/xml.vim'

"git-gutter
let g:gitgutter_map_keys = 0
let g:gitgutter_eager = 0

" tabbar
nmap <leader>tb :TagbarToggle<cr>
let g:tagbar_width=30

"easy-tags
let g:easytags_dynamic_files = 1


" for NERDTree
let NERDTreeIgnore=['\.pyc$']
nmap <leader>n :NERDTreeToggle<cr>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" for Mark
nmap <silent><leader>m <Plug>MarkSet
nmap <silent><leader>c <Plug>MarkClear
vmap <silent><leader>m <Plug>MarkSet
vmap <silent><leader>c <Plug>MarkClear
nmap <leader>mn <leader>/
nmap <leader>mp <leader>?



" plugin - bufexplorer.vim
map <leader>b :BufExplorer<cr>
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=0  " show the abs path in bufexplorer
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitBelow=0        " Split new window above current


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" s: Find this C symbol
map <leader>ts :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
map <leader>tg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
map <leader>td :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
map <leader>tc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
map <leader>tt :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
map <leader>te :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
map <leader>tf :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
map <leader>ti :call CscopeFind('i', expand('<cword>'))<CR>
map <leader>tl :call ToggleLocationList()<CR>
map <leader>tu :CscopeGen .<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"conqueterm.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent><leader>xs :ConqueTermSplit bash<CR>
let g:ConqueTerm_Color = 1
let g:ConqueTerm_InsertOnEnter = 0
let g:ConqueTerm_CloseOnEnd = 0
let g:ConqueTerm_SendFunctionKeys = 0
let g:ConqueTerm_SendVisKey = ''
let g:ConqueTerm_ToggleKey = ''
let g:ConqueTerm_StartMessages = 0


"auto highlight
hi HLWORD guifg=red guibg=darkgreen ctermfg=red ctermbg=darkgreen
nnoremap <leader>h :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
    let @/ = ''
    if exists('#auto_highlight')
        au! auto_highlight
        augroup! auto_highlight
        silent! exe printf('match NORMAL /\<%s\>/', escape(expand('<cword>'), '\'))
        setl updatetime=4000
        echo 'Highlight current word: off'
        return 0
    else
        augroup auto_highlight
        au!
        au CursorMoved * silent! exe printf('match HLWORD /\<%s\>/', escape(expand('<cword>'), '\'))
        au CursorHold * silent! exe printf('match HLWORD /\<%s\>/', escape(expand('<cword>'), '\'))
        augroup end
        setl updatetime=500
        echo 'Highlight current word: ON'
        return 1
    endif
endfunction


"highlight column
function! SetColorColumn()
    let col_num = virtcol(".")
    let cc_list = split(&cc, ',')
    if count(cc_list, string(col_num)) <= 0
        execute "set cc+=".col_num
        echo 'Highlight current column: ON'
    else
        execute "set cc-=".col_num
        echo 'Highlight current column: OFF'
    endif
endfunction
map <leader>hc :call SetColorColumn()<CR>


"indent line
let g:indentLine_enabled = 0
let g:indentLine_char = '┊'
nmap <silent><leader>hi :IndentLinesToggle<CR>


"for syntastic
nmap <leader>xc :SyntasticToggleMode<CR>
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_phpcs_conf = "--tab-width=4 --standard=CodeIgniter"
let g:syntastic_c_checkers = ['make']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_ignore_files= [".*\.py$"]


"for FuzzyFinder
nmap  <leader>zb :FufBuffer<CR>
nmap  <leader>zf :FufFile<CR>
nmap  <leader>zd :FufDir<CR>
nmap  <leader>zm :FufBookmarkFile<CR>
nmap  <leader>zt :FufTag<CR>
let g:fuf_dataDir = '~/.vim/.vim-fuf-data'

"for yankRing
let g:yankring_history_dir = '$HOME/.vim'
nmap  <leader>y :YRShow<CR>


"for calendar
let g:calendar_diary = "~/.vim/diary"
let g:calendar_monday = 1
let g:calendar_focus_today = 1
let g:calendar_mark = 'left-fit'


"for fakeclip
vmap <leader><c-y> "+y
nmap <leader><c-p> "+p


"for gundo
nmap <leader>u :GundoToggle<CR>

"for fcitx
set ttimeoutlen=100

"for airline
"powerline font must be installed first, https://github.com/powerline/fonts.git
let g:airline_theme="murmur"

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11 "config font for gvim ”for gvim
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_symbols.crypt = '🔒'
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"ag
let g:ag_prg = 'ag --vimgrep --ignore-dir ''.hg'' --ignore-dir ''.svn'' --ignore-dir ''.git'' --ignore-dir ''.ropeproject'' --ignore-dir ''.vimproj'' --ignore ''*.bak'' --ignore ''.tags*'' --ignore ''.tags*'' --ignore ''*~'' --ignore ''*.o'' --ignore ''*.a'' --ignore ''*.so'' --ignore ''*.pyc'' --ignore ''*.pyo'' --ignore ''*.pyd'''
let g:ag_highlight=1
nnoremap <leader>xg :Ag <cword> ./<cr>
nnoremap <leader>xa :Ag <cword> ./<cr>

" Unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_rec/async','sorters','sorter_rank')
call unite#custom#profile('source/grep', 'context', {'no_quit' : 1})
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '-i --vimgrep --hidden  --ignore-dir ''.hg'' --ignore-dir ''.svn'' --ignore-dir ''.git'' --ignore-dir ''.ropeproject'' --ignore-dir ''.vimproj'' --ignore ''*.bak'' --ignore ''.tags*'' --ignore ''.tags*'' --ignore ''*~'' --ignore ''*.o'' --ignore ''*.a'' --ignore ''*.so'' --ignore ''*.pyc'' --ignore ''*.pyo'' --ignore ''*.pyd'''
let g:unite_source_grep_recursive_opt = ''

let g:unite_source_history_yank_enable = 1
nnoremap <leader>f :Unite<Cr>
nnoremap <leader>ft :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>ff :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>fr :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>fo :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>fy :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>fb :<C-u>Unite -no-split -buffer-name=buffer  -start-insert buffer<cr>
nnoremap <leader>fg :<C-u>Unite -no-split -buffer-name=grep -start-insert grep<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

"easy-align
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

"vimim
imap <c-\> <c-_>

"vimim
let g:lt_location_list_toggle_map = '<leader>xl'
let g:lt_quickfix_list_toggle_map = '<leader>xq'

"youcompleteme
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" Do not ask when starting vim
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nnoremap <leader>jl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jg :YcmCompleter GoToDefinitionElseDeclaration<CR>
set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" enable tags
let g:ycm_collect_identifiers_from_tags_files= 1
" enable strings in comments
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" bgen to complete after the second char
let g:ycm_min_num_of_chars_for_completion= 2
" disable cache
let g:ycm_cache_omnifunc=0
" syntax complete
let g:ycm_seed_identifiers_with_syntax= 1
" complete in comments
let gycm_complete_in_comments = 1
" complete in string
let g:ycm_complete_in_strings = 1
" disable ycm for the below filetype
let g:ycm_filetype_blacklist = {
\ 'tagbar' : 1,
\ 'nerdtree' : 1,
\}
let g:ycm_key_invoke_completion = '<M-;>'
let g:ycm_use_ultisnips_completer = 1

"ultisnips
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"                                           
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

"header.vim
nmap <leader>hn :InsertHead<cr>
nmap <leader>hu :UpdateHead<cr>


" => omnifunc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP


" => PHP configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHP comments
let PHP_autoformatcomment=1
" PHP folding
let php_folding=1
let g:phpqa_codesniffer_args = "--standard=Zend"
let g:phpqa_messdetector_ruleset = "~/.vim/phpmd.xml"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for python help
let g:pymode_options_max_line_length = 119
let g:pymode_breakpoint_bind = '<leader>xb'
let g:pymode_rope_completion = 0
let g:pymode_lint_ignore = "E501"



"for js
" javascript fold
let b:javascript_fold=1
" javascript for dom, html and css
let javascript_enable_domhtmlcss=1
autocmd FileType javascript set regexpengine=1
autocmd FileType javascript syntax enable
au BufRead,BufNewFile *.json setf json
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery



"for txt file
au BufRead,BufNewFile *.txt setlocal ft=txt
au BufRead,BufNewFile *.log setlocal ft=txt

"fro vim-markdown
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=mkd
let g:vim_markdown_folding_disabled=1

" for html template
autocmd BufRead,BufNewFile *.tpl set filetype=html.php
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_settings = {
\ 'php' : {
\ 'extends' : 'html',
\ 'filters' : 'c',
\ 
\},
\ 'xml' : {
\ 'extends' : 'html',
\ 
\},
\ 'haml' : {
\ 'extends' : 'html',
\ 
\},
\}
let g:user_emmet_expandabbr_key = '<Tab>'


" XML formatter
function! DoFormatXML() range
    " Save the file type
    let l:origft = &ft

    " Clean the file type
    set ft=

    " Add fake initial tag (so we can process multiple top-level elements)
    exe ":let l:beforeFirstLine=" . a:firstline . "-1"
    if l:beforeFirstLine < 0
        let l:beforeFirstLine=0
    endif
    exe a:lastline . "put ='</PrettyXML>'"
    exe l:beforeFirstLine . "put ='<PrettyXML>'"
    exe ":let l:newLastLine=" . a:lastline . "+2"
    if l:newLastLine > line('$')
        let l:newLastLine=line('$')
    endif

    " Remove XML header
    exe ":" . a:firstline . "," . a:lastline . "s/<\?xml\\_.*\?>\\_s*//e"

    " Recalculate last line of the edited code
    let l:newLastLine=search('</PrettyXML>')

    " Execute external formatter
    exe ":silent " . a:firstline . "," . l:newLastLine . "!xmllint --noblanks --format --recover -"

    " Recalculate first and last lines of the edited code
    let l:newFirstLine=search('<PrettyXML>')
    let l:newLastLine=search('</PrettyXML>')
    
    " Get inner range
    let l:innerFirstLine=l:newFirstLine+1
    let l:innerLastLine=l:newLastLine-1

    " Remove extra unnecessary indentation
    exe ":silent " . l:innerFirstLine . "," . l:innerLastLine "s/^  //e"

    " Remove fake tag
    exe l:newLastLine . "d"
    exe l:newFirstLine . "d"

    " Put the cursor at the first line of the edited code
    exe ":" . l:newFirstLine

    " Restore the file type
    exe "set ft=" . l:origft
endfunction
command! -range=% FormatXML <line1>,<line2>call DoFormatXML()

syntax enable

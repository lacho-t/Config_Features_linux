" first install follows packages :
" sudo dnf install vim-nerdtree-git-plugin.noarch vim-nerdtree.noarch highlight-3.57-1.fc33.x86_64
" sudo dnf install vim-gitgutter.noarch
" sudo dnf install highlight-3.57-1.fc33.x86_64
" sudo dnf install vim-nerdtree-git-plugin.noarch vim-nerdtree.noarch highlight-3.57-1.fc33.x86_64
" sudo dnf install vim-gitgutter.noarch
" sudo dnf install vim-airline.noarch
" sudo dnf install vim-gitgutter.noarch
" sudo dnf install powerline.x86_64 powerline-docs.noarch powerline-fonts.noarch vim-powerline.noarch

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=4
set expandtab
set smartindent
set nu
set cursorline
set nowrap
set tabstop=2
set smartcase
set incsearch
set expandtab
set number relativenumber
set wildmenu
set wildmode=longest,list,full
set laststatus=1
set nofoldenable
set history=1000
set colorcolumn=90
set encoding=utf-8
set backspace=indent,eol,start
set hidden
set showmatch
set autoindent
set undofile
set undodir=~/vim/undodir
" ALE provides an omni-completion function you can use for triggering
" completion manually with <C-x><C-o>.
set omnifunc=ale#completion#OmniFunc

" Plug 'dense-analysis/ale'
filetype indent plugin on

autocmd VimEnter * NERDTree
autocmd VimENter * wincmd p
autocmd VimENter * GitGutterAll
autocmd VimENter * sp
autocmd VimENter * wincmd j
" autocmd VimENter * vsp
"mautocmd VimENter * wincmd l
" autocmd VimENter * terminal htop
" autocmd VimENter * wincmd j
" autocmd VimENter * q
" autocmd VimENter * wincmd h
autocmd VimENter * terminal
autocmd VimENter * wincmd j
autocmd VimENter * q
autocmd VimENter * wincmd k
autocmd VimENter * resize +10
" autocmd BufEnter * NERDTreeToggle
" autocmd BufENter * GitGutterAll
" autocmd BufENter * wincmd p

" ale options
let b:ale_fixers = ['prettier', 'eslint']
" equivalent to the above
let b:ale_fixers = {'java': ['prettier', 'eslint']}
" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'java': ['eslint'],
\}
" ale completion options
" Enable completion where available.
" This setting must be set before ALE is loaded.
" You should not turn this setting on if you wish to use ALE as a completion
" source for other completion plugins, like Deoplete.
let g:ale_completion_enabled = 1
" ALE supports automatic imports from external modules.
" This behavior is disabled by default and can be enabled by setting:
" See :help ale-completion for more information.
let g:ale_completion_autoimport = 1
let g:webdevicons_enable_airline_statusline=0
let g:gitgutter_terminal_reports_focus=0
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '✹'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '-'
let mapleader=" "
let g:NERDTreeIndicatorMapCustom= {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "'",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

if &t_Co > 2
    silent! colorscheme dim
    set background=dark

    highlight Folded cterm=reverse ctermbg=0 ctermfg=8
    highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
    highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

    highlight DiffAdd ctermfg=green cterm=bold
    highlight DiffDelete ctermfg=red cterm=bold
    highlight DiffChange ctermfg=yellow

    set colorcolumn=80
endif

" Mark trailing spaces dependending on whether we have a fancy terminal or not
if &t_Co > 2
    highlight ExtraWhitespace ctermbg=1
    match ExtraWhitespace /\s\+$/
else
    set listchars=trail:~
    set list
endif
" prueba Nerdtree


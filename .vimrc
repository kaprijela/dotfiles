" Load plugins via Pathogen
execute pathogen#infect()

syntax enable

set tabstop=4 " default indentation width is 4 spaces
set noexpandtab " use tabs by default
set number " number lines
set wildmenu
set showmatch
set updatetime=1000
set autoindent
set mouse-=a " sane mouse behavior
set splitright " calling vsp puts the new buffer to the right
set hlsearch " highlight search matches

" Ctrl+L also clears search highlighting
nnoremap <silent> <C-l> :noh<return><C-l>

" UTF-8 settings
set encoding=utf-8
set fileencoding=utf-8

set bg=dark
colorscheme gruvbox " (gruvbox, palenight, slate)

" Airline settings
let g:airline_theme = 'gruvbox' " set theme (gruvbox, onedark)
let g:airline#extensions#tabline#enabled = 1 " enable list of buffers at the top
let g:airline#extensions#tabline#fnamemod = ':t' " show only the filename in buffer list

set t_Co=256 " 256 colors

highlight SpecialKey ctermfg=242
highlight Folded ctermbg=236
highlight LineNr ctermfg=242
" highlight Comment ctermfg=244
" highlight Todo ctermfg=235
highlight Tabline ctermfg=236 ctermbg=244
highlight TabLineFill ctermfg=236 ctermbg=244

" 80 character mark
set colorcolumn=80
highlight ColorColumn ctermbg=236

" GitGutter color settings
highlight GitGutterAdd ctermbg=114 ctermfg=236
highlight GitGutterDelete ctermbg=203 ctermfg=236
" let g:gitgutter_set_sign_backgrounds = 1
set list lcs=trail:·,tab:⇀\ ,nbsp:␣,precedes:«,extends:»

" Use 2 spaces in yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" Use 2 spaces in toml
autocmd FileType toml setlocal ts=2 sts=2 sw=2 expandtab
" Use 2 spaces in conf
autocmd FileType conf setlocal ts=2 sts=2 sw=2 expandtab
" Use 2 spaces in conf
autocmd FileType json setlocal ts=2 sts=2 sw=2 expandtab
" Use 2 spaces in netlogo
autocmd FileType netlogo setlocal ts=2 sts=2 sw=2 expandtab
" Use 2 spaces in markdown
autocmd FileType markdown setlocal ts=2 sts=2 sw=2 expandtab
" Use 4 spaces in python
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
"Plug 'cohama/lexima.vim' 
Plug 'mattn/emmet-vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


set title
set number
syntax on
set showmatch
set tabstop=4
set shiftwidth=4
set tabstop=4
set shiftwidth=4
set expandtab

" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" シンタックスハイライトの有効化
syntax enable

" Tab文字を半角スペースにする
set expandtab

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" 括弧の補完
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o><Right>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap < <><Left>
inoremap [ []<Left>

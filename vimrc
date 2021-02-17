set background=dark
colorscheme pablo
set nocompatible                   " disable vi capability
syntax on                          " syntax highlighting
set number                         " show line number
set list
set lcs=tab:>-,eol:<,nbsp:%
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set smartindent
set backspace=indent,eol,start     " delete on backspace
set history=200                    " change history from 20 to 200
set clipboard^=unnamed,unnamedplus " useful clibboard
set autoindent                     " normal insert
set hidden                         " allow change buffer without save
set splitbelow
set splitright
set scrolloff=5
set path+=**
set wildmenu
set wildmode=list,full
" in path %% unfolding to current file path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" Bind Ctrl-l temp highlighting off on search
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
set hls
set incsearch
" makes * and # work on visual mode too.
function! s:VSetSearch(cmdtype)
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
  let @s = temp
endfunction
xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>
" Bind F2 to save with sudo
nnoremap <F2> :w !sudo tee % > /dev/null<CR>

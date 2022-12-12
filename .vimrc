syntax on

set mouse=a

set clipboard=unnamedplus

set tabstop=4
set shiftwidth=4
set autoindent

set hlsearch
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif


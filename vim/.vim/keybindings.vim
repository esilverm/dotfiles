" Initial remappings from https://github.com/square/maximum-awesome#vim

" remap the mapleader to comma
let mapleader = ','

" Ctrl + hjkl to move between windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-w> <C-w>l

" ,l to align lines on a string, usually used as ,l= to align assignments
noremap <leader>l :Align

" open and search NERDTree
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

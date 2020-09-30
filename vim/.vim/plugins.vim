" My vim config

set runtimepath+=~/.vim/

" Download vim plug
" https://github.com/xero/dotfiles/blob/fd11fe51c7e929d9bbc65efcc00181a126a064c0/vim/.vim/plugins.vim#L19
if empty(glob('~/.vim/autoload/plug.vim'))
  silent call system('mkdir -p ~/.vim/{autoload,bundle,cache,undo,backups,swaps}')
  silent call system('curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  execute 'source ~/.vim/autoload/plug.vim'
  augroup plugsetup
    au!
    autocmd VimEnter * PlugInstall
  augroup
end

call plug#begin("~/.vim/plugged")

" Theming
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'

" Development
Plug 'tpope/vim-fugitive'  " vim git integration
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }  " vim linting
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " vim intellisense

" Install javascript and related language syntax support
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
  
call plug#end()

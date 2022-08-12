set number relativenumber ruler syntax=enable filetype=on
set expandtab smarttab shiftwidth=4 tabstop=4

autocmd FileType c setlocal shiftwidth=2 tabstop=2
autocmd FileType make setlocal noexpandtab shiftwidth=2 tabstop=2
autocmd FileType tex setlocal shiftwidth=2 tabstop=2

" auto re-source tmux config
" see: https://waylonwalker.com/tmux-source-file/#from-vim
autocmd bufwritepost tmux.conf execute ':!tmux source-file %'


" vim-plug installation
" see: https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()

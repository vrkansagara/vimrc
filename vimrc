set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim


try
" Load all custom configuration for the vim.
source $HOME/.vim_runtime/config/vrkansagara.vim
source $HOME/.vim_runtime/config/mwop.vim
catch /.*/
    echo "Caught error: " . v:exception
endtry
" =========== @vrkansagara Custom confifuration @START========
" Load personal vimrc in new tab with leader-v
nmap <leader>p :tabedit $HOME/.vim_runtime/config/vrkansagara.vim<CR>
" " Reload vimr configuration file
nnoremap <Leader>r :source $MYVIMRC<CR>
" =========== @vrkansagara Custom confifuration @END========
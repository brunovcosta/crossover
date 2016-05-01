"cruz de vizualização
set timeout
set timeoutlen=0
hi cursorline   cterm=none ctermbg=235 
hi cursorcolumn cterm=none ctermbg=235 
autocmd InsertLeave *  hi cursorline   cterm=none ctermbg=235
autocmd InsertLeave *  hi cursorcolumn   cterm=none ctermbg=235
autocmd InsertEnter *  hi cursorline   cterm=none ctermbg=black
autocmd InsertEnter *  hi cursorcolumn   cterm=none ctermbg=black
augroup BgHighlight
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline cursorcolumn
	autocmd WinLeave * setlocal nocursorline nocursorcolumn
augroup END

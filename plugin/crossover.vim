" Cross over editing
set timeout
set timeoutlen=0
hi cursorline   cterm=none ctermbg=gray 
hi cursorcolumn cterm=none ctermbg=gray 
autocmd InsertLeave *  hi cursorline     cterm=none ctermbg=gray
autocmd InsertLeave *  hi cursorcolumn   cterm=none ctermbg=gray
autocmd InsertEnter *  hi cursorline     cterm=bold ctermbg=gray
autocmd InsertEnter *  hi cursorcolumn   cterm=none ctermbg=gray
augroup BgHighlight
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline cursorcolumn
	autocmd WinLeave * setlocal nocursorline nocursorcolumn
augroup END

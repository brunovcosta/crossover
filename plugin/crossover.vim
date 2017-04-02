" Cross over editing
set timeout
set timeoutlen=0
if !exists("g:crossover_normal_color")
  let g:crossover_normal_color = 238
endif
if !exists("g:crossover_insert_color")
  let g:crossover_insert_color = 249
endif
execute 'hi cursorline   cterm=none ctermbg='.g:crossover_normal_color
execute 'hi cursorcolumn cterm=none ctermbg='.g:crossover_normal_color
autocmd InsertLeave *  execute 'hi cursorline     cterm=none ctermbg='.g:crossover_normal_color
autocmd InsertLeave *  execute 'hi cursorcolumn   cterm=none ctermbg='.g:crossover_normal_color
autocmd InsertEnter *  execute 'hi cursorline     cterm=none ctermbg='.g:crossover_insert_color
autocmd InsertEnter *  execute 'hi cursorcolumn   cterm=none ctermbg='.g:crossover_insert_color
augroup BgHighlight
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline cursorcolumn
	autocmd WinLeave * setlocal nocursorline nocursorcolumn
augroup END

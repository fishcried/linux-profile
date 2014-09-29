function! g:LoadTemplate(extension)
	silent! execute '0r $HOME/.vim/templates/' . a:extension . '.tpl'
endfunction


function! g:SaveSession()
	execute 'mksession! $HOME/.vim/sessions/session.vim'
endfunction

function! g:LoadSession()
	if argc() == 0
		execute 'source $HOME/.vim/sessions/session.vim'
	endif
endfunction

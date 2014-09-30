function! g:LoadTemplate(extension)
	silent! execute '0r $HOME/.vim/templates/' . a:extension . '.tpl'
endfunction


function! g:SaveSession()
	if !isdirectory(expand("~/.vim/sessions"))
		!mkdir ~/.vim/sessions
	endif
	execute 'mksession! $HOME/.vim/sessions/session.vim'
endfunction

function! g:LoadSession()
	if argc() == 0
		silent! execute 'source $HOME/.vim/sessions/session.vim'
	endif
endfunction

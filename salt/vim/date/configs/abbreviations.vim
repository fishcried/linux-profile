function! s:AbbrAsk(abbr,expansion)
	let answer = confirm("Use the abbreviation '" . a:abbr . "'?",
				\"&Yes\n&No", 1)
	return answer == 1 ? a:expansion : a:abbr
endfunction

" 关于时间
iabbrev <expr> idate <SID>AbbrAsk('idate',
			\ '<c-r>=strftime("%Y-%m-%d")<cr>')
iabbrev <expr> itime <SID>AbbrAsk('itime',
			\ '<c-r>=strftime("%H:%M")<cr>')

" 关于邮箱
iabbrev <expr> ismail <SID>AbbrAsk('ismail',
			\ 'Wang Tianqing<tianqing.w@gmail.com')
iabbrev <expr> igmail <SID>AbbrAsk('igmail',
			\ 'wangtq@neunn.com')
" 作者信息
iabbrev <expr> iauthor <SID>AbbrAsk('iauthor',
			\ 'fishcried')


" =============================================================================
" Filename: plugin/preventwinclosed.vim
" Author: Takashi KOJIMA
" License: MIT License
" Last Change: 2014/10/25 19:42:00
" =============================================================================

scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! preventwinclosed#enable()
	let g:prevent_win_closed_enable = 1 
	"Maping
	cabbrev q <c-r>=preventwinclosed#replace_cmd('q')<CR>
	cabbrev qa <c-r>=preventwinclosed#replace_cmd('qa')<CR>
	cabbrev aq <c-r>=preventwinclosed#replace_cmd('qa')<CR>
	cabbrev waq <c-r>=preventwinclosed#replace_cmd('wqa')<CR>
	cabbrev wqa <c-r>=preventwinclosed#replace_cmd('wqa')<CR>
	if g:prevent_win_closed_quit_enable 
		cabbrev quit <c-r>=preventwinclosed#replace_cmd('q')<CR>
		cabbrev qall <c-r>=preventwinclosed#replace_cmd('qa')<CR>
		cabbrev quitall <c-r>=preventwinclosed#replace_cmd('qa')<CR>
	endif
	"quit force
endfunction

function! preventwinclosed#disable()
	let g:prevent_win_closed_enable = 0
	"Re-maping
	cabbrev q q
	cabbrev qa qa
	cabbrev aq aq
	cabbrev waq waq
	cabbrev wqa wqa
	cabbrev quit quit
	cabbrev qall qall
	cabbrev quitall quitall
endfunction

" replace quit command to enew command if last buffer
function! preventwinclosed#replace_cmd(param)
	" never come here but to be secure. {{{2
	if ! g:prevent_win_closed_enable 
		call preventwinclosed#disable()
		return a:param
	endif
	"}}}
	let a:firstcmd = getcmdtype() == ':' && getcmdpos() == 1 
	let a:notabpages =  tabpagenr('$') == 1 && winnr('$') == 1
	if a:firstcmd && a:param == 'q'
		return a:notabpages ? 'enew' : 'q'
	elseif a:firstcmd && a:notabpages && a:param == 'wq' 
		return 'w\|enew'
	elseif a:firstcmd && a:param == 'qa'
		return 'tabonly\|only\|enew'
	elseif a:firstcmd && a:param == 'wqa'
		return 'w\|tabonly\|only\|enew'
	else "Never comes here"
		return a:param 
	endif
endfunction
let &cpo = s:save_cpo

" =============================================================================
" Filename: plugin/preventwinclosed.vim
" Author: Takashi KOJIMA
" License: MIT License
" Last Change: 2014/10/25 19:42:00
" =============================================================================

"Load Once {{{
if exists('g:loaded_prevent_win_closed') && g:loaded_prevent_win_closed
	finish
endif
let g:loaded_prevent_win_closed = 1
"}}}
" Saving 'cpoptions' {{{
let s:save_cpo = &cpo
set cpo&vim
"}}}

"Whether <:quit> is re-mapping or not 
if !exists('g:prevent_win_closed_quit_enable')
	let g:prevent_win_closed_quit_enable = 0 
endif
"If gvim is, this plugin is enable as default.
if !exists('g:prevent_win_closed_disable')
	let g:prevent_win_closed_disable = !has('gui')
endif

"Initialize{{{
if g:prevent_win_closed_disable == 0 
	call preventwinclosed#enable()
else
	call preventwinclosed#disable()
endif
"}}}

"Add Enable/Disable command{{{
command! PreventWinClosedDisable call preventwinclosed#disable()
command! PreventWinClosedEnable call preventwinclosed#enable()
"}}}

" Restore 'cpoptions' {{{
let &cpo = s:save_cpo
unlet s:save_cpo
" }}}

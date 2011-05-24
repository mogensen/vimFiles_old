" Vim syntax file
" Language:    peephole
" Author:      Frederik Mogensen <Mogensen@cs.au.dk>
" Last Change: July 24, 2011

" To install, put this file in ~/.vim/syntax/
" and add the lines
"   autocmd BufEnter *.peep set syntax=peephole
"   au Syntax peephole so $HOME/.vim/syntax/peephole.vim
" to your ~/.vimrc file

" Remove any old syntax stuff hanging around.
syn clear
syn case match

syn keyword KEYWORD 	pattern target commute degree formals negate returns

syn match Number	"-\?[0-9][0-9]*"
syn match Instruction	"[a-z][a-z_0-9]*"
syn match PatternStart	"[a-z][a-z_0-9]*:"
syn match NameStart	"[a-z][a-z_0-9]*\s*\~"
syn match NameEnd	"->"
syn match Structure	"\*\|||\|&&\|!"

syn region Comment	start=./\*. skip=./\*. end=.\*/.
syn region Comment	oneline start=.//. end=.$.

command -nargs=+ HiLink hi def link <args>
HiLink Instruction		Identifier
HiLink PatternStart		Define
HiLink NameStart		Define
HiLink NameEnd  		Define
delcommand HiLink


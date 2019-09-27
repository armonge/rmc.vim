" Vim syntax file
" Language:     RMC
" Remark:       
" Author:       Andrés Reyes Monge <armonge@gmail.com>
"------------------------------------------------------------------

if v:version < 600
    syntax clear
elseif exists('b:current_syntax')
    finish
endif


" keywords are case-sensitive
syntax case match

" keywords
syntax keyword rmcIdentifier HM RM LANG

" operators 
syntax keyword rmcOperator says excludes start with equals includes any
syntax match rmcOperator "contains" 

" comments
syntax region rmcComment start="//" end="$" 

" strings
syntax region rmcString start=+"+ skip=+\\"+ end=+"+ 
syntax region rmcString start=+'+ end=+'+ 


"-------------------------------------
" and now for the highlighting

" things with one-to-one mapping
highlight def link rmcOperator Operator
highlight def link rmcIdentifier Identifier
highlight def link rmcComment Comment
highlight def link rmcString String
highlight def link rmcConstant Constant

" synchronize

let b:current_syntax = 'rmc'

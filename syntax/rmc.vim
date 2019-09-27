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


" An identifier looks like [prefix:]identifier
syntax match rmcIdentifier /\<\(\h\k*:\)\?\h\k*\>/

" keywords are case-sensitive
syntax case match

" statement keywords

" other keywords
syntax keyword rmcKeyword HM RM LANG

" boolean constants (separated from the 'other keywords' for vim syntax purposes)

" operators (separated from the 'other keywords' for vim syntax purposes)
syntax keyword rmcOperator says excludes start with contains
syntax keyword rmcOperator equals includes any

" if-feature (separated from 'statement keywords' for vim syntax purposes)

" comments
syntax region rmcComment start="/\*" end="\*/" contains=@Spell
syntax region rmcComment start="//" end="$" contains=@Spell

" strings
syntax region yangString start=+"+ skip=+\\"+ end=+"+ contains=@Spell
syntax region yangString start=+'+ end=+'+ contains=@Spell

" dates


" numbers


"-------------------------------------
" and now for the highlighting

" things with one-to-one mapping
highlight def link rmcOperator Operator
highlight def link rmcKeyword Special
highlight def link rmcComment Comment

" arbitrary mappings

" synchronize

let b:current_syntax = 'rmc'

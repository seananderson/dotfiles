" Vim color file
" Converted from Textmate theme idleFingers-custom using Coloration v0.2.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "idlefingerscustom"

hi Cursor  guifg=NONE guibg=#fefff1 gui=NONE
hi Visual  guifg=NONE guibg=#7a7a7a gui=NONE
hi CursorLine  guifg=NONE guibg=#353637 gui=NONE
hi CursorColumn  guifg=NONE guibg=#353637 gui=NONE
hi LineNr  guifg=#a5a5a5 guibg=#4a4a4a gui=NONE
hi VertSplit  guifg=#6c6c6c guibg=#6c6c6c gui=NONE
hi MatchParen  guifg=#cc7833 guibg=NONE gui=NONE
hi StatusLine  guifg=#ffffff guibg=#6c6c6c gui=bold
hi StatusLineNC  guifg=#ffffff guibg=#6c6c6c gui=NONE
hi Pmenu  guifg=NONE guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#7a7a7a gui=NONE
hi IncSearch  guifg=NONE guibg=#755942 gui=NONE
hi Search  guifg=NONE guibg=#755942 gui=NONE
hi Directory  guifg=#72a2c6 guibg=NONE gui=NONE
hi Folded  guifg=#8b8b8b guibg=#4a4a4a gui=NONE

hi Normal  guifg=#ffffff guibg=#4a4a4a gui=NONE
hi Boolean  guifg=#72a2c6 guibg=NONE gui=NONE
hi Character  guifg=#72a2c6 guibg=NONE gui=NONE
hi Comment  guifg=#8b8b8b guibg=NONE gui=italic
hi Conditional  guifg=#cc7833 guibg=NONE gui=NONE
hi Constant  guifg=#72a2c6 guibg=NONE gui=NONE
hi Define  guifg=#cc7833 guibg=NONE gui=NONE
hi ErrorMsg  guifg=NONE guibg=NONE gui=NONE
hi WarningMsg  guifg=NONE guibg=NONE gui=NONE
hi Float  guifg=#72a2c6 guibg=NONE gui=NONE
hi Function  guifg=NONE guibg=NONE gui=NONE
hi Identifier  guifg=NONE guibg=NONE gui=NONE
hi Keyword  guifg=#cc7833 guibg=NONE gui=NONE
hi Label  guifg=#a5c261 guibg=NONE gui=NONE
hi NonText  guifg=#4f4f4f guibg=#353637 gui=NONE
hi Number  guifg=#72a2c6 guibg=NONE gui=NONE
hi Operator  guifg=#cc7833 guibg=NONE gui=NONE
hi PreProc  guifg=#cc7833 guibg=NONE gui=NONE
hi Special  guifg=#ffffff guibg=NONE gui=NONE
hi SpecialKey  guifg=#4f4f4f guibg=#353637 gui=NONE
hi Statement  guifg=#cc7833 guibg=NONE gui=NONE
hi StorageClass  guifg=NONE guibg=NONE gui=NONE
hi String  guifg=#a5c261 guibg=NONE gui=NONE
hi Tag  guifg=NONE guibg=NONE gui=NONE
hi Title  guifg=#ffffff guibg=NONE gui=bold
hi Todo  guifg=#8b8b8b guibg=NONE gui=inverse,bold,italic
hi Type  guifg=NONE guibg=NONE gui=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyClass  guifg=#cc7833 guibg=NONE gui=NONE
hi rubyFunction  guifg=NONE guibg=NONE gui=NONE
hi rubyInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi rubySymbol  guifg=#72a2c6 guibg=NONE gui=NONE
hi rubyConstant  guifg=NONE guibg=NONE gui=NONE
hi rubyStringDelimiter  guifg=#a5c261 guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyInclude  guifg=#cc7833 guibg=NONE gui=NONE
hi rubyGlobalVariable  guifg=#b7dff8 guibg=NONE gui=NONE
hi rubyRegexp  guifg=#cccc33 guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#cccc33 guibg=NONE gui=NONE
hi rubyEscape  guifg=#72a2c6 guibg=NONE gui=NONE
hi rubyControl  guifg=#cc7833 guibg=NONE gui=NONE
hi rubyClassVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyOperator  guifg=#cc7833 guibg=NONE gui=NONE
hi rubyException  guifg=#cc7833 guibg=NONE gui=NONE
hi rubyPseudoVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass  guifg=#cccc33 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod  guifg=#df4f27 guibg=NONE gui=NONE
hi rubyRailsARMethod  guifg=#df4f27 guibg=NONE gui=NONE
hi rubyRailsRenderMethod  guifg=#df4f27 guibg=NONE gui=NONE
hi rubyRailsMethod  guifg=#df4f27 guibg=NONE gui=NONE
hi erubyDelimiter  guifg=NONE guibg=NONE gui=NONE
hi erubyComment  guifg=#8b8b8b guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#df4f27 guibg=NONE gui=NONE
hi htmlTag  guifg=#ffe5bb guibg=NONE gui=NONE
hi htmlEndTag  guifg=#ffe5bb guibg=NONE gui=NONE
hi htmlTagName  guifg=#ffe5bb guibg=NONE gui=NONE
hi htmlArg  guifg=#ffe5bb guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#72a2c6 guibg=NONE gui=NONE
hi javaScriptFunction  guifg=NONE guibg=NONE gui=NONE
hi javaScriptRailsFunction  guifg=#df4f27 guibg=NONE gui=NONE
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor  guifg=#b7dff8 guibg=NONE gui=NONE
hi yamlAlias  guifg=#b7dff8 guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#a5c261 guibg=NONE gui=NONE
hi cssURL  guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName  guifg=#df4f27 guibg=NONE gui=NONE
hi cssColor  guifg=#72a2c6 guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=NONE guibg=NONE gui=NONE
hi cssClassName  guifg=NONE guibg=NONE gui=NONE
hi cssValueLength  guifg=#72a2c6 guibg=NONE gui=NONE
hi cssCommonAttr  guifg=NONE guibg=NONE gui=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE

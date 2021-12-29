-- gruvy theme (based on tj's gruvbuddy)
local lush = require("lush")
local hsl = lush.hsl
local hsluv = lush.hsluv
local theme = lush(function()
  return {
    SpecialKey                             { fg="cyan", }, -- SpecialKey     xxx ctermfg=81 guifg=cyan
    packerWorking                          { SpecialKey }, -- packerWorking  xxx links to SpecialKey
    EndOfBuffer                            { fg="#969896", sp="none", bg="none", }, -- EndOfBuffer    xxx guifg=#969896 guibg=none guisp=none
    TermCursor                             { gui="reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
    NonText                                { fg="#4e545c", gui="italic", sp="none", bg="none", }, -- NonText        xxx ctermfg=12 gui=italic guifg=#4e545c guibg=none guisp=none
    TelescopePreviewHyphen                 { NonText }, -- TelescopePreviewHyphen xxx links to NonText
    TelescopeResultsDiffUntracked          { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
    TelescopePromptCounter                 { NonText }, -- TelescopePromptCounter xxx links to NonText
    Directory                              { fg="#e7b089", sp="none", bg="none", }, -- Directory      xxx ctermfg=159 guifg=#e7b089 guibg=none guisp=none
    TelescopePreviewDirectory              { Directory }, -- TelescopePreviewDirectory xxx links to Directory
    TelescopePreviewDate                   { Directory }, -- TelescopePreviewDate xxx links to Directory
    ErrorMsg                               { fg="white", bg="red", }, -- ErrorMsg       xxx ctermfg=15 ctermbg=1 guifg=white guibg=red
    NvimInvalidSpacing                     { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
    packerFail                             { ErrorMsg }, -- packerFail     xxx links to ErrorMsg
    packerStatusFail                       { ErrorMsg }, -- packerStatusFail xxx links to ErrorMsg
    IncSearch                              { gui="reverse", }, -- IncSearch      xxx cterm=reverse gui=reverse
    Search                                 { fg="#282a2e", sp="none", bg="#f8fe7a", }, -- Search         xxx ctermfg=0 ctermbg=11 guifg=#282a2e guibg=#f8fe7a guisp=none
    QuickFixLine                           { Search }, -- QuickFixLine   xxx links to Search
    Substitute                             { Search }, -- Substitute     xxx links to Search
    TelescopePreviewMatch                  { Search }, -- TelescopePreviewMatch xxx links to Search
    MoreMsg                                { fg="seagreen", gui="bold", }, -- MoreMsg        xxx ctermfg=121 gui=bold guifg=seagreen
    ModeMsg                                { gui="bold", }, -- ModeMsg        xxx cterm=bold gui=bold
    LineNr                                 { fg="#969896", sp="none", bg="#282a2e", }, -- LineNr         xxx ctermfg=11 guifg=#969896 guibg=#282a2e guisp=none
    LineNrAbove                            { LineNr }, -- LineNrAbove    xxx links to LineNr
    LineNrBelow                            { LineNr }, -- LineNrBelow    xxx links to LineNr
    TelescopeResultsLineNr                 { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
    CursorLineNr                           { fg="yellow", gui="bold", }, -- CursorLineNr   xxx cterm=underline ctermfg=11 gui=bold guifg=yellow
    Question                               { fg="green", gui="bold", }, -- Question       xxx ctermfg=121 gui=bold guifg=green
    packerSuccess                          { Question }, -- packerSuccess  xxx links to Question
    StatusLine                             { fg="#373b41", sp="none", bg="#81a2be", }, -- StatusLine     xxx cterm=bold,reverse guifg=#373b41 guibg=#81a2be guisp=none
    MsgSeparator                           { StatusLine }, -- MsgSeparator   xxx links to StatusLine
    ElCommandCV                            { StatusLine }, -- ElCommandCV    xxx links to StatusLine
    ElCommandEx                            { StatusLine }, -- ElCommandEx    xxx links to StatusLine
    ElConfirm                              { StatusLine }, -- ElConfirm      xxx links to StatusLine
    ElInsertCompletion                     { StatusLine }, -- ElInsertCompletion xxx links to StatusLine
    ElMore                                 { StatusLine }, -- ElMore         xxx links to StatusLine
    ElNormalOperatorPending                { StatusLine }, -- ElNormalOperatorPending xxx links to StatusLine
    ElPrompt                               { StatusLine }, -- ElPrompt       xxx links to StatusLine
    ElReplace                              { StatusLine }, -- ElReplace      xxx links to StatusLine
    ElSBlock                               { StatusLine }, -- ElSBlock       xxx links to StatusLine
    ElSelect                               { StatusLine }, -- ElSelect       xxx links to StatusLine
    ElShell                                { StatusLine }, -- ElShell        xxx links to StatusLine
    ElSLine                                { StatusLine }, -- ElSLine        xxx links to StatusLine
    ElTerm                                 { StatusLine }, -- ElTerm         xxx links to StatusLine
    ElVirtualReplace                       { StatusLine }, -- ElVirtualReplace xxx links to StatusLine
    ElVisualBlock                          { StatusLine }, -- ElVisualBlock  xxx links to StatusLine
    ElVisualLine                           { StatusLine }, -- ElVisualLine   xxx links to StatusLine
    ElVisual                               { StatusLine }, -- ElVisual       xxx links to StatusLine
    StatusLineNC                           { fg="#969896", sp="none", bg="#3f4349", }, -- StatusLineNC   xxx cterm=reverse guifg=#969896 guibg=#3f4349 guisp=none
    VertSplit                              { }, -- VertSplit      xxx cterm=reverse
    Title                                  { fg="magenta", gui="bold", }, -- Title          xxx ctermfg=225 gui=bold guifg=magenta
    TSTitle                                { Title }, -- TSTitle        xxx links to Title
    htmlTitle                              { Title }, -- htmlTitle      xxx links to Title
    Visual                                 { fg="none", sp="none", bg="#38556d", }, -- Visual         xxx ctermbg=242 guifg=none guibg=#38556d guisp=none
    TSPlaygroundFocus                      { Visual }, -- TSPlaygroundFocus xxx links to Visual
    TelescopeSelection                     { Visual }, -- TelescopeSelection xxx links to Visual
    TelescopePreviewLine                   { Visual }, -- TelescopePreviewLine xxx links to Visual
    WarningMsg                             { fg="red", }, -- WarningMsg     xxx ctermfg=224 guifg=red
    packerBreakingChange                   { WarningMsg }, -- packerBreakingChange xxx links to WarningMsg
    TSDanger                               { WarningMsg }, -- TSDanger       xxx links to WarningMsg
    vimWarn                                { WarningMsg }, -- vimWarn        xxx links to WarningMsg
    WildMenu                               { fg="black", bg="yellow", }, -- WildMenu       xxx ctermfg=0 ctermbg=11 guifg=black guibg=yellow
    Folded                                 { fg="#7c7f7c", sp="none", bg="#4e545c", }, -- Folded         xxx ctermfg=14 ctermbg=242 guifg=#7c7f7c guibg=#4e545c guisp=none
    vimFold                                { Folded }, -- vimFold        xxx links to Folded
    FoldColumn                             { fg="cyan", bg="grey", }, -- FoldColumn     xxx ctermfg=14 ctermbg=242 guifg=cyan guibg=grey
    DiffAdd                                { fg="none", sp="none", bg="#33423e", }, -- DiffAdd        xxx ctermbg=4 guifg=none guibg=#33423e guisp=none
    TelescopeResultsDiffAdd                { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
    DiffChange                             { fg="none", sp="none", bg="#33423e", }, -- DiffChange     xxx ctermbg=5 guifg=none guibg=#33423e guisp=none
    TelescopeResultsDiffChange             { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
    DiffDelete                             { fg="#3a404c", sp="none", bg="#24282f", }, -- DiffDelete     xxx ctermfg=12 ctermbg=6 guifg=#3a404c guibg=#24282f guisp=none
    TelescopeResultsDiffDelete             { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
    DiffText                               { fg="none", sp="none", bg="#3e4a47", }, -- DiffText       xxx cterm=bold ctermbg=9 guifg=none guibg=#3e4a47 guisp=none
    SignColumn                             { fg="#969896", sp="none", bg="#282a2e", }, -- SignColumn     xxx ctermfg=14 ctermbg=242 guifg=#969896 guibg=#282a2e guisp=none
    Conceal                                { fg="#282c34", gui="italic", sp="none", bg="#4e545c", }, -- Conceal        xxx ctermfg=7 ctermbg=242 gui=italic guifg=#282c34 guibg=#4e545c guisp=none
    SpellBad                               { gui="undercurl", sp="red", }, -- SpellBad       xxx ctermbg=9 gui=undercurl guisp=red
    SpellCap                               { gui="undercurl", sp="blue", }, -- SpellCap       xxx ctermbg=12 gui=undercurl guisp=blue
    SpellRare                              { gui="undercurl", sp="magenta", }, -- SpellRare      xxx ctermbg=13 gui=undercurl guisp=magenta
    SpellLocal                             { gui="undercurl", sp="cyan", }, -- SpellLocal     xxx ctermbg=14 gui=undercurl guisp=cyan
    Pmenu                                  { fg="#b4b7b4", sp="none", bg="#373b41", }, -- Pmenu          xxx ctermfg=0 ctermbg=13 guifg=#b4b7b4 guibg=#373b41 guisp=none
    PmenuSel                               { fg="#282c34", sp="none", bg="#fbffad", }, -- PmenuSel       xxx ctermfg=242 ctermbg=0 guifg=#282c34 guibg=#fbffad guisp=none
    PmenuSbar                              { fg="none", sp="none", bg="#282c34", }, -- PmenuSbar      xxx ctermbg=248 guifg=none guibg=#282c34 guisp=none
    PmenuThumb                             { fg="none", sp="none", bg="#b4b7b4", }, -- PmenuThumb     xxx ctermbg=15 guifg=none guibg=#b4b7b4 guisp=none
    TabLine                                { fg="#5f89ad", sp="none", bg="#282a2e", }, -- TabLine        xxx cterm=underline ctermfg=15 ctermbg=242 guifg=#5f89ad guibg=#282a2e guisp=none
    TabLineSel                             { fg="#ffffff", gui="bold", sp="none", bg="#282a2e", }, -- TabLineSel     xxx cterm=bold gui=bold guifg=#ffffff guibg=#282a2e guisp=none
    TabLineFill                            { fg="#ebdbb2", sp="none", bg="#4a515e", }, -- TabLineFill    xxx cterm=reverse guifg=#ebdbb2 guibg=#4a515e guisp=none
    CursorColumn                           { bg="grey40", }, -- CursorColumn   xxx ctermbg=242 guibg=grey40
    CursorLine                             { fg="none", sp="none", bg="#333842", }, -- CursorLine     xxx cterm=underline guifg=none guibg=#333842 guisp=none
    ColorColumn                            { bg="#373c47", }, -- ColorColumn    xxx ctermbg=1 guibg=#373c47
    Whitespace                             { fg="#8e6fbd", sp="none", bg="none", }, -- Whitespace     xxx guifg=#8e6fbd guibg=none guisp=none
    NormalFloat                            { fg="#fafafa", sp="none", bg="#111317", }, -- NormalFloat    xxx guifg=#fafafa guibg=#111317 guisp=none
    DressingSelectText                     { NormalFloat }, -- DressingSelectText xxx links to NormalFloat
    DressingInputText                      { NormalFloat }, -- DressingInputText xxx links to NormalFloat
    FloatBorder                            { fg="#3e4451", sp="none", bg="#111317", }, -- FloatBorder    xxx guifg=#3e4451 guibg=#111317 guisp=none
    FloatTitle                             { FloatBorder }, -- FloatTitle     xxx links to FloatBorder
    RedrawDebugNormal                      { gui="reverse", }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
    RedrawDebugClear                       { bg="yellow", }, -- RedrawDebugClear xxx ctermbg=11 guibg=yellow
    RedrawDebugComposed                    { bg="green", }, -- RedrawDebugComposed xxx ctermbg=10 guibg=green
    RedrawDebugRecompose                   { bg="red", }, -- RedrawDebugRecompose xxx ctermbg=9 guibg=red
    Cursor                                 { fg="#282c34", sp="none", bg="#e0e0e0", }, -- Cursor         xxx guifg=#282c34 guibg=#e0e0e0 guisp=none
    lCursor                                { fg="bg", bg="fg", }, -- lCursor        xxx guifg=bg guibg=fg
    Normal                                 { fg="#e0e0e0", sp="none", bg="#282c34", }, -- Normal         xxx guifg=#e0e0e0 guibg=#282c34 guisp=none
    NvimSpacing                            { Normal }, -- NvimSpacing    xxx links to Normal
    DapUIVariable                          { Normal }, -- DapUIVariable  xxx links to Normal
    DapUIValue                             { Normal }, -- DapUIValue     xxx links to Normal
    DapUIFrameName                         { Normal }, -- DapUIFrameName xxx links to Normal
    TelescopeNormal                        { Normal }, -- TelescopeNormal xxx links to Normal
    TelescopePreviewNormal                 { Normal }, -- TelescopePreviewNormal xxx links to Normal
    vimEmbedError                          { Normal }, -- vimEmbedError  xxx links to Normal
    cssMediaComma                          { Normal }, -- cssMediaComma  xxx links to Normal
    vimUserFunc                            { Normal }, -- vimUserFunc    xxx links to Normal
    NotifyERRORBody                        { Normal }, -- NotifyERRORBody xxx links to Normal
    NotifyWARNBody                         { Normal }, -- NotifyWARNBody xxx links to Normal
    NotifyINFOBody                         { Normal }, -- NotifyINFOBody xxx links to Normal
    NotifyDEBUGBody                        { Normal }, -- NotifyDEBUGBody xxx links to Normal
    NotifyTRACEBody                        { Normal }, -- NotifyTRACEBody xxx links to Normal
    FloatShadow                            { blend="80", bg="black", }, -- FloatShadow    xxx guibg=black blend=80
    FloatShadowThrough                     { blend="100", bg="black", }, -- FloatShadowThrough xxx guibg=black blend=100
    Error                                  { fg="#d98c8c", gui="bold", sp="none", bg="none", }, -- Error          xxx ctermfg=15 ctermbg=9 gui=bold guifg=#d98c8c guibg=none guisp=none
    NvimInvalid                            { Error }, -- NvimInvalid    xxx links to Error
    TSQueryLinterError                     { Error }, -- TSQueryLinterError xxx links to Error
    htmlPreProcAttrError                   { Error }, -- htmlPreProcAttrError xxx links to Error
    vbError                                { Error }, -- vbError        xxx links to Error
    cssDeprecated                          { Error }, -- cssDeprecated  xxx links to Error
    htmlPreError                           { Error }, -- htmlPreError   xxx links to Error
    javaScriptError                        { Error }, -- javaScriptError xxx links to Error
    cssError                               { Error }, -- cssError       xxx links to Error
    cssBraceError                          { Error }, -- cssBraceError  xxx links to Error
    markdownError                          { Error }, -- markdownError  xxx links to Error
    vimUserAttrbError                      { Error }, -- vimUserAttrbError xxx links to Error
    vimElseIfErr                           { Error }, -- vimElseIfErr   xxx links to Error
    vimSynError                            { Error }, -- vimSynError    xxx links to Error
    vimSyncError                           { Error }, -- vimSyncError   xxx links to Error
    luaParenError                          { Error }, -- luaParenError  xxx links to Error
    luaError                               { Error }, -- luaError       xxx links to Error
    vimError                               { Error }, -- vimError       xxx links to Error
    luaBraceError                          { Error }, -- luaBraceError  xxx links to Error
    vimUserCmdError                        { Error }, -- vimUserCmdError xxx links to Error
    htmlError                              { Error }, -- htmlError      xxx links to Error
    vimOperError                           { Error }, -- vimOperError   xxx links to Error
    Todo                                   { fg="#f8fe7a", sp="none", bg="none", }, -- Todo           xxx ctermfg=0 ctermbg=11 guifg=#f8fe7a guibg=none guisp=none
    TSWarning                              { Todo }, -- TSWarning      xxx links to Todo
    vbTodo                                 { Todo }, -- vbTodo         xxx links to Todo
    luaTodo                                { Todo }, -- luaTodo        xxx links to Todo
    vimTodo                                { Todo }, -- vimTodo        xxx links to Todo
    javaScriptCommentTodo                  { Todo }, -- javaScriptCommentTodo xxx links to Todo
    String                                 { fg="#99cc99", sp="none", bg="none", }, -- String         xxx guifg=#99cc99 guibg=none guisp=none
    NvimString                             { String }, -- NvimString     xxx links to String
    TSString                               { String }, -- TSString       xxx links to String
    TSStringRegex                          { String }, -- TSStringRegex  xxx links to String
    TSLiteral                              { String }, -- TSLiteral      xxx links to String
    TSPlaygroundLang                       { String }, -- TSPlaygroundLang xxx links to String
    TelescopePreviewExecute                { String }, -- TelescopePreviewExecute xxx links to String
    TelescopePreviewSize                   { String }, -- TelescopePreviewSize xxx links to String
    javaScriptStringD                      { String }, -- javaScriptStringD xxx links to String
    luaString                              { String }, -- luaString      xxx links to String
    luaString2                             { String }, -- luaString2     xxx links to String
    vimString                              { String }, -- vimString      xxx links to String
    markdownUrlTitle                       { String }, -- markdownUrlTitle xxx links to String
    cssURL                                 { String }, -- cssURL         xxx links to String
    cssAttributeSelector                   { String }, -- cssAttributeSelector xxx links to String
    cssStringQQ                            { String }, -- cssStringQQ    xxx links to String
    cssStringQ                             { String }, -- cssStringQ     xxx links to String
    vbString                               { String }, -- vbString       xxx links to String
    javaScriptRegexpString                 { String }, -- javaScriptRegexpString xxx links to String
    javaScriptStringT                      { String }, -- javaScriptStringT xxx links to String
    javaScriptStringS                      { String }, -- javaScriptStringS xxx links to String
    htmlPreAttr                            { String }, -- htmlPreAttr    xxx links to String
    htmlValue                              { String }, -- htmlValue      xxx links to String
    htmlString                             { String }, -- htmlString     xxx links to String
    packerString                           { String }, -- packerString   xxx links to String
    Constant                               { fg="#de935f", gui="bold", sp="none", bg="none", }, -- Constant       xxx ctermfg=13 gui=bold guifg=#de935f guibg=none guisp=none
    TSTextReference                        { Constant }, -- TSTextReference xxx links to Constant
    TelescopePreviewPipe                   { Constant }, -- TelescopePreviewPipe xxx links to Constant
    TelescopePreviewCharDev                { Constant }, -- TelescopePreviewCharDev xxx links to Constant
    TelescopePreviewBlock                  { Constant }, -- TelescopePreviewBlock xxx links to Constant
    TelescopePreviewRead                   { Constant }, -- TelescopePreviewRead xxx links to Constant
    TelescopePreviewUser                   { Constant }, -- TelescopePreviewUser xxx links to Constant
    TelescopePreviewGroup                  { Constant }, -- TelescopePreviewGroup xxx links to Constant
    cssFunction                            { Constant }, -- cssFunction    xxx links to Constant
    luaConstant                            { Constant }, -- luaConstant    xxx links to Constant
    cssUnicodeRange                        { Constant }, -- cssUnicodeRange xxx links to Constant
    cssPseudoClassLang                     { Constant }, -- cssPseudoClassLang xxx links to Constant
    cssAttr                                { Constant }, -- cssAttr        xxx links to Constant
    cssKeyFrameProp                        { Constant }, -- cssKeyFrameProp xxx links to Constant
    cssColor                               { Constant }, -- cssColor       xxx links to Constant
    vbDefine                               { Constant }, -- vbDefine       xxx links to Constant
    vbConst                                { Constant }, -- vbConst        xxx links to Constant
    packerStatusSuccess                    { Constant }, -- packerStatusSuccess xxx links to Constant
    packerStatusCommit                     { Constant }, -- packerStatusCommit xxx links to Constant
    ElCommand                              { Constant }, -- ElCommand      xxx links to Constant
    TelescopeResultsConstant               { Constant }, -- TelescopeResultsConstant xxx links to Constant
    Character                              { fg="#cc6666", sp="none", bg="none", }, -- Character      xxx guifg=#cc6666 guibg=none guisp=none
    TSCharacter                            { Character }, -- TSCharacter    xxx links to Character
    javaScriptCharacter                    { Character }, -- javaScriptCharacter xxx links to Character
    Number                                 { fg="#cc6666", sp="none", bg="none", }, -- Number         xxx guifg=#cc6666 guibg=none guisp=none
    NvimNumber                             { Number }, -- NvimNumber     xxx links to Number
    TSNumber                               { Number }, -- TSNumber       xxx links to Number
    TelescopeResultsNumber                 { Number }, -- TelescopeResultsNumber xxx links to Number
    cssValueNumber                         { Number }, -- cssValueNumber xxx links to Number
    vimHiNmbr                              { Number }, -- vimHiNmbr      xxx links to Number
    cssValueFrequency                      { Number }, -- cssValueFrequency xxx links to Number
    cssValueAngle                          { Number }, -- cssValueAngle  xxx links to Number
    cssValueLength                         { Number }, -- cssValueLength xxx links to Number
    cssValueInteger                        { Number }, -- cssValueInteger xxx links to Number
    vbNumber                               { Number }, -- vbNumber       xxx links to Number
    vimNumber                              { Number }, -- vimNumber      xxx links to Number
    vimMark                                { Number }, -- vimMark        xxx links to Number
    cssValueTime                           { Number }, -- cssValueTime   xxx links to Number
    cssUnitDecorators                      { Number }, -- cssUnitDecorators xxx links to Number
    luaNumber                              { Number }, -- luaNumber      xxx links to Number
    Boolean                                { fg="#de935f", sp="none", bg="none", }, -- Boolean        xxx guifg=#de935f guibg=none guisp=none
    TSBoolean                              { Boolean }, -- TSBoolean      xxx links to Boolean
    javaScriptBoolean                      { Boolean }, -- javaScriptBoolean xxx links to Boolean
    vbBoolean                              { Boolean }, -- vbBoolean      xxx links to Boolean
    packerProgress                         { Boolean }, -- packerProgress xxx links to Boolean
    packerBool                             { Boolean }, -- packerBool     xxx links to Boolean
    Float                                  { fg="#cc6666", sp="none", bg="none", }, -- Float          xxx guifg=#cc6666 guibg=none guisp=none
    TSFloat                                { Float }, -- TSFloat        xxx links to Float
    vbFloat                                { Float }, -- vbFloat        xxx links to Float
    markdownUrl                            { Float }, -- markdownUrl    xxx links to Float
    Function                               { fg="#f8fe7a", sp="none", bg="none", }, -- Function       xxx guifg=#f8fe7a guibg=none guisp=none
    TSMethod                               { Function }, -- TSMethod       xxx links to Function
    TelescopeResultsClass                  { Function }, -- TelescopeResultsClass xxx links to Function
    TelescopeResultsField                  { Function }, -- TelescopeResultsField xxx links to Function
    vimFuncName                            { Function }, -- vimFuncName    xxx links to Function
    cssFunctionComma                       { Function }, -- cssFunctionComma xxx links to Function
    htmlTag                                { Function }, -- htmlTag        xxx links to Function
    LuaFunction                            { Function }, -- LuaFunction    xxx links to Function
    javaScriptFunction                     { Function }, -- javaScriptFunction xxx links to Function
    javaScriptBraces                       { Function }, -- javaScriptBraces xxx links to Function
    cssClassNameDot                        { Function }, -- cssClassNameDot xxx links to Function
    cssClassName                           { Function }, -- cssClassName   xxx links to Function
    cssIdentifier                          { Function }, -- cssIdentifier  xxx links to Function
    cssFunctionName                        { Function }, -- cssFunctionName xxx links to Function
    cssBraces                              { Function }, -- cssBraces      xxx links to Function
    ElNormal                               { Function }, -- ElNormal       xxx links to Function
    TelescopeResultsFunction               { Function }, -- TelescopeResultsFunction xxx links to Function
    Identifier                             { fg="#cc6666", gui="bold", sp="none", bg="none", }, -- Identifier     xxx cterm=bold ctermfg=14 gui=bold guifg=#cc6666 guibg=none guisp=none
    NvimIdentifier                         { Identifier }, -- NvimIdentifier xxx links to Identifier
    TSSymbol                               { Identifier }, -- TSSymbol       xxx links to Identifier
    TSParameter                            { Identifier }, -- TSParameter    xxx links to Identifier
    TSField                                { Identifier }, -- TSField        xxx links to Identifier
    TSProperty                             { Identifier }, -- TSProperty     xxx links to Identifier
    TelescopePromptPrefix                  { Identifier }, -- TelescopePromptPrefix xxx links to Identifier
    TelescopeResultsIdentifier             { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
    htmlEndTag                             { Identifier }, -- htmlEndTag     xxx links to Identifier
    javaScriptIdentifier                   { Identifier }, -- javaScriptIdentifier xxx links to Identifier
    vbFunction                             { Identifier }, -- vbFunction     xxx links to Identifier
    vbIdentifier                           { Identifier }, -- vbIdentifier   xxx links to Identifier
    vimVar                                 { Identifier }, -- vimVar         xxx links to Identifier
    vimSpecFile                            { Identifier }, -- vimSpecFile    xxx links to Identifier
    luaFunc                                { Identifier }, -- luaFunc        xxx links to Identifier
    packerHash                             { Identifier }, -- packerHash     xxx links to Identifier
    Conditional                            { fg="#cc6666", sp="none", bg="none", }, -- Conditional    xxx guifg=#cc6666 guibg=none guisp=none
    TSConditional                          { Conditional }, -- TSConditional  xxx links to Conditional
    javaScriptBranch                       { Conditional }, -- javaScriptBranch xxx links to Conditional
    luaElse                                { Conditional }, -- luaElse        xxx links to Conditional
    javaScriptConditional                  { Conditional }, -- javaScriptConditional xxx links to Conditional
    vbConditional                          { Conditional }, -- vbConditional  xxx links to Conditional
    luaCond                                { Conditional }, -- luaCond        xxx links to Conditional
    Statement                              { fg="#c04040", sp="none", bg="none", }, -- Statement      xxx ctermfg=11 guifg=#c04040 guibg=none guisp=none
    Exception                              { Statement }, -- Exception      xxx links to Statement
    TelescopePreviewSocket                 { Statement }, -- TelescopePreviewSocket xxx links to Statement
    TelescopePreviewWrite                  { Statement }, -- TelescopePreviewWrite xxx links to Statement
    javaScriptStatement                    { Statement }, -- javaScriptStatement xxx links to Statement
    vbKeyword                              { Statement }, -- vbKeyword      xxx links to Statement
    cssTagName                             { Statement }, -- cssTagName     xxx links to Statement
    htmlStatement                          { Statement }, -- htmlStatement  xxx links to Statement
    vimSearchDelim                         { Statement }, -- vimSearchDelim xxx links to Statement
    vbStatement                            { Statement }, -- vbStatement    xxx links to Statement
    cssAtRuleLogical                       { Statement }, -- cssAtRuleLogical xxx links to Statement
    vimSetSep                              { Statement }, -- vimSetSep      xxx links to Statement
    vimKeyword                             { Statement }, -- vimKeyword     xxx links to Statement
    vimStatement                           { Statement }, -- vimStatement   xxx links to Statement
    Repeat                                 { fg="#cc6666", sp="none", bg="none", }, -- Repeat         xxx guifg=#cc6666 guibg=none guisp=none
    TSRepeat                               { Repeat }, -- TSRepeat       xxx links to Repeat
    javaScriptRepeat                       { Repeat }, -- javaScriptRepeat xxx links to Repeat
    vbRepeat                               { Repeat }, -- vbRepeat       xxx links to Repeat
    luaRepeat                              { Repeat }, -- luaRepeat      xxx links to Repeat
    luaFor                                 { Repeat }, -- luaFor         xxx links to Repeat
    Label                                  { fg="#f8fe7a", sp="none", bg="none", }, -- Label          xxx guifg=#f8fe7a guibg=none guisp=none
    TSLabel                                { Label }, -- TSLabel        xxx links to Label
    TSTag                                  { Label }, -- TSTag          xxx links to Label
    luaLabel                               { Label }, -- luaLabel       xxx links to Label
    javaScriptConstant                     { Label }, -- javaScriptConstant xxx links to Label
    javaScriptLabel                        { Label }, -- javaScriptLabel xxx links to Label
    packerPackageName                      { Label }, -- packerPackageName xxx links to Label
    Operator                               { fg="#e6b3b3", sp="none", bg="none", }, -- Operator       xxx guifg=#e6b3b3 guibg=none guisp=none
    NvimAssignment                         { Operator }, -- NvimAssignment xxx links to Operator
    NvimOperator                           { Operator }, -- NvimOperator   xxx links to Operator
    vbOperator                             { Operator }, -- vbOperator     xxx links to Operator
    vimOper                                { Operator }, -- vimOper        xxx links to Operator
    TSOperator                             { Operator }, -- TSOperator     xxx links to Operator
    TelescopeResultsOperator               { Operator }, -- TelescopeResultsOperator xxx links to Operator
    javaScriptOperator                     { Operator }, -- javaScriptOperator xxx links to Operator
    luaIn                                  { Operator }, -- luaIn          xxx links to Operator
    luaOperator                            { Operator }, -- luaOperator    xxx links to Operator
    Keyword                                { fg="#b294bb", sp="none", bg="none", }, -- Keyword        xxx guifg=#b294bb guibg=none guisp=none
    javaScriptReserved                     { Keyword }, -- javaScriptReserved xxx links to Keyword
    TSKeywordFunction                      { Keyword }, -- TSKeywordFunction xxx links to Keyword
    TelescopePreviewSticky                 { Keyword }, -- TelescopePreviewSticky xxx links to Keyword
    javaScriptNull                         { Keyword }, -- javaScriptNull xxx links to Keyword
    javaScriptMessage                      { Keyword }, -- javaScriptMessage xxx links to Keyword
    javaScriptGlobal                       { Keyword }, -- javaScriptGlobal xxx links to Keyword
    javaScriptMember                       { Keyword }, -- javaScriptMember xxx links to Keyword
    Include                                { fg="#8abeb7", sp="none", bg="none", }, -- Include        xxx guifg=#8abeb7 guibg=none guisp=none
    cssAtRule                              { Include }, -- cssAtRule      xxx links to Include
    TSNamespace                            { Include }, -- TSNamespace    xxx links to Include
    PreProc                                { fg="#f8fe7a", sp="none", bg="none", }, -- PreProc        xxx ctermfg=81 guifg=#f8fe7a guibg=none guisp=none
    Macro                                  { PreProc }, -- Macro          xxx links to PreProc
    PreCondit                              { PreProc }, -- PreCondit      xxx links to PreProc
    vimHLMod                               { PreProc }, -- vimHLMod       xxx links to PreProc
    vimHiAttrib                            { PreProc }, -- vimHiAttrib    xxx links to PreProc
    vimMenuName                            { PreProc }, -- vimMenuName    xxx links to PreProc
    vimEnvvar                              { PreProc }, -- vimEnvvar      xxx links to PreProc
    vimOption                              { PreProc }, -- vimOption      xxx links to PreProc
    markdownRule                           { PreProc }, -- markdownRule   xxx links to PreProc
    cssPagePseudo                          { PreProc }, -- cssPagePseudo  xxx links to PreProc
    cssAtKeyword                           { PreProc }, -- cssAtKeyword   xxx links to PreProc
    cssPseudoClassId                       { PreProc }, -- cssPseudoClassId xxx links to PreProc
    vbMethods                              { PreProc }, -- vbMethods      xxx links to PreProc
    htmlPreProcAttrName                    { PreProc }, -- htmlPreProcAttrName xxx links to PreProc
    htmlPreStmt                            { PreProc }, -- htmlPreStmt    xxx links to PreProc
    TSAttribute                            { PreProc }, -- TSAttribute    xxx links to PreProc
    TSAnnotation                           { PreProc }, -- TSAnnotation   xxx links to PreProc
    htmlPreProc                            { PreProc }, -- htmlPreProc    xxx links to PreProc
    htmlHead                               { PreProc }, -- htmlHead       xxx links to PreProc
    Define                                 { fg="#8abeb7", sp="none", bg="none", }, -- Define         xxx guifg=#8abeb7 guibg=none guisp=none
    TSConstMacro                           { Define }, -- TSConstMacro   xxx links to Define
    StorageClass                           { fg="#f8fe7a", sp="none", bg="none", }, -- StorageClass   xxx guifg=#f8fe7a guibg=none guisp=none
    cssProp                                { StorageClass }, -- cssProp        xxx links to StorageClass
    Type                                   { fg="#b294bb", gui="italic", sp="none", bg="none", }, -- Type           xxx ctermfg=121 gui=italic guifg=#b294bb guibg=none guisp=none
    NvimNumberPrefix                       { Type }, -- NvimNumberPrefix xxx links to Type
    NvimOptionSigil                        { Type }, -- NvimOptionSigil xxx links to Type
    packerOutput                           { Type }, -- packerOutput   xxx links to Type
    TSType                                 { Type }, -- TSType         xxx links to Type
    TSTypeBuiltin                          { Type }, -- TSTypeBuiltin  xxx links to Type
    TSEnvironmentName                      { Type }, -- TSEnvironmentName xxx links to Type
    TelescopeMultiSelection                { Type }, -- TelescopeMultiSelection xxx links to Type
    vimAutoEvent                           { Type }, -- vimAutoEvent   xxx links to Type
    htmlArg                                { Type }, -- htmlArg        xxx links to Type
    javaScriptType                         { Type }, -- javaScriptType xxx links to Type
    vbTypes                                { Type }, -- vbTypes        xxx links to Type
    vbTypeSpecifier                        { Type }, -- vbTypeSpecifier xxx links to Type
    markdownId                             { Type }, -- markdownId     xxx links to Type
    vimGroup                               { Type }, -- vimGroup       xxx links to Type
    vimType                                { Type }, -- vimType        xxx links to Type
    vimPattern                             { Type }, -- vimPattern     xxx links to Type
    vimSynCase                             { Type }, -- vimSynCase     xxx links to Type
    vimSynReg                              { Type }, -- vimSynReg      xxx links to Type
    vimSyncC                               { Type }, -- vimSyncC       xxx links to Type
    vimSyncKey                             { Type }, -- vimSyncKey     xxx links to Type
    vimSyncNone                            { Type }, -- vimSyncNone    xxx links to Type
    vimHiTerm                              { Type }, -- vimHiTerm      xxx links to Type
    vimSpecial                             { Type }, -- vimSpecial     xxx links to Type
    packerStatus                           { Type }, -- packerStatus   xxx links to Type
    Structure                              { fg="#b294bb", sp="none", bg="none", }, -- Structure      xxx guifg=#b294bb guibg=none guisp=none
    luaTable                               { Structure }, -- luaTable       xxx links to Structure
    Typedef                                { fg="#f8fe7a", sp="none", bg="none", }, -- Typedef        xxx guifg=#f8fe7a guibg=none guisp=none
    markdownFootnoteDefinition             { Typedef }, -- markdownFootnoteDefinition xxx links to Typedef
    markdownIdDeclaration                  { Typedef }, -- markdownIdDeclaration xxx links to Typedef
    markdownFootnote                       { Typedef }, -- markdownFootnote xxx links to Typedef
    Tag                                    { fg="#f8fe7a", sp="none", bg="none", }, -- Tag            xxx guifg=#f8fe7a guibg=none guisp=none
    Special                                { fg="#aa92cd", gui="bold", sp="none", bg="none", }, -- Special        xxx ctermfg=224 gui=bold guifg=#aa92cd guibg=none guisp=none
    Delimiter                              { Special }, -- Delimiter      xxx links to Special
    SpecialComment                         { Special }, -- SpecialComment xxx links to Special
    Debug                                  { Special }, -- Debug          xxx links to Special
    TSConstBuiltin                         { Special }, -- TSConstBuiltin xxx links to Special
    TSConstructor                          { Special }, -- TSConstructor  xxx links to Special
    vimLetHereDocStart                     { Special }, -- vimLetHereDocStart xxx links to Special
    vimSubstFlags                          { Special }, -- vimSubstFlags  xxx links to Special
    vimUserAttrbCmpltFunc                  { Special }, -- vimUserAttrbCmpltFunc xxx links to Special
    vimFuncSID                             { Special }, -- vimFuncSID     xxx links to Special
    vimContinue                            { Special }, -- vimContinue    xxx links to Special
    markdownEscape                         { Special }, -- markdownEscape xxx links to Special
    cssMediaType                           { Special }, -- cssMediaType   xxx links to Special
    cssAttrComma                           { Special }, -- cssAttrComma   xxx links to Special
    cssCustomProp                          { Special }, -- cssCustomProp  xxx links to Special
    cssSelectorOp2                         { Special }, -- cssSelectorOp2 xxx links to Special
    javaScriptEmbed                        { Special }, -- javaScriptEmbed xxx links to Special
    javaScript                             { Special }, -- javaScript     xxx links to Special
    htmlCssDefinition                      { Special }, -- htmlCssDefinition xxx links to Special
    htmlSpecialChar                        { Special }, -- htmlSpecialChar xxx links to Special
    javaScriptSpecial                      { Special }, -- javaScriptSpecial xxx links to Special
    vbEvents                               { Special }, -- vbEvents       xxx links to Special
    cssSelectorOp                          { Special }, -- cssSelectorOp  xxx links to Special
    cssUnicodeEscape                       { Special }, -- cssUnicodeEscape xxx links to Special
    cssImportant                           { Special }, -- cssImportant   xxx links to Special
    cssFontDescriptor                      { Special }, -- cssFontDescriptor xxx links to Special
    vimLetHereDocStop                      { Special }, -- vimLetHereDocStop xxx links to Special
    vimGroupSpecial                        { Special }, -- vimGroupSpecial xxx links to Special
    vimSynOption                           { Special }, -- vimSynOption   xxx links to Special
    NotifyLogTitle                         { Special }, -- NotifyLogTitle xxx links to Special
    TSFuncBuiltin                          { Special }, -- TSFuncBuiltin  xxx links to Special
    vimAutoCmdMod                          { Special }, -- vimAutoCmdMod  xxx links to Special
    TelescopePreviewLink                   { Special }, -- TelescopePreviewLink xxx links to Special
    TSMath                                 { Special }, -- TSMath         xxx links to Special
    SpecialChar                            { fg="#a3685a", sp="none", bg="none", }, -- SpecialChar    xxx guifg=#a3685a guibg=none guisp=none
    NvimRegister                           { SpecialChar }, -- NvimRegister   xxx links to SpecialChar
    NvimStringSpecial                      { SpecialChar }, -- NvimStringSpecial xxx links to SpecialChar
    TSStringEscape                         { SpecialChar }, -- TSStringEscape xxx links to SpecialChar
    TSStringSpecial                        { SpecialChar }, -- TSStringSpecial xxx links to SpecialChar
    vimRegister                            { SpecialChar }, -- vimRegister    xxx links to SpecialChar
    vimCmplxRepeat                         { SpecialChar }, -- vimCmplxRepeat xxx links to SpecialChar
    vimCtrlChar                            { SpecialChar }, -- vimCtrlChar    xxx links to SpecialChar
    vimPatSep                              { SpecialChar }, -- vimPatSep      xxx links to SpecialChar
    vimSubstSubstr                         { SpecialChar }, -- vimSubstSubstr xxx links to SpecialChar
    luaSpecial                             { SpecialChar }, -- luaSpecial     xxx links to SpecialChar
    TelescopeResultsVariable               { SpecialChar }, -- TelescopeResultsVariable xxx links to SpecialChar
    DiagnosticError                        { fg="#db4b4b", }, -- DiagnosticError xxx ctermfg=1 guifg=#db4b4b
    DiagnosticVirtualTextError             { DiagnosticError }, -- DiagnosticVirtualTextError xxx links to DiagnosticError
    DiagnosticFloatingError                { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
    DiagnosticSignError                    { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
    DiagnosticWarn                         { fg="#e0af68", }, -- DiagnosticWarn xxx ctermfg=3 guifg=#e0af68
    DiagnosticVirtualTextWarn              { DiagnosticWarn }, -- DiagnosticVirtualTextWarn xxx links to DiagnosticWarn
    DiagnosticFloatingWarn                 { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
    DiagnosticSignWarn                     { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
    DiagnosticInfo                         { fg="#0db9d7", }, -- DiagnosticInfo xxx ctermfg=4 guifg=#0db9d7
    DiagnosticVirtualTextInfo              { DiagnosticInfo }, -- DiagnosticVirtualTextInfo xxx links to DiagnosticInfo
    DiagnosticFloatingInfo                 { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
    DiagnosticSignInfo                     { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
    DiagnosticHint                         { fg="#10b981", }, -- DiagnosticHint xxx ctermfg=7 guifg=#10b981
    DiagnosticVirtualTextHint              { DiagnosticHint }, -- DiagnosticVirtualTextHint xxx links to DiagnosticHint
    DiagnosticFloatingHint                 { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
    DiagnosticSignHint                     { DiagnosticHint }, -- DiagnosticSignHint xxx links to DiagnosticHint
    DiagnosticUnderlineError               { gui="underline", sp="red", }, -- DiagnosticUnderlineError xxx cterm=underline gui=underline guisp=red
    DiagnosticUnderlineWarn                { gui="underline", sp="orange", }, -- DiagnosticUnderlineWarn xxx cterm=underline gui=underline guisp=orange
    DiagnosticUnderlineInfo                { gui="underline", sp="lightblue", }, -- DiagnosticUnderlineInfo xxx cterm=underline gui=underline guisp=lightblue
    DiagnosticUnderlineHint                { gui="underline", sp="lightgrey", }, -- DiagnosticUnderlineHint xxx cterm=underline gui=underline guisp=lightgrey
    MatchParen                             { fg="#8abeb7", sp="none", bg="none", }, -- MatchParen     xxx ctermbg=6 guifg=#8abeb7 guibg=none guisp=none
    Comment                                { fg="#b0b1b0", sp="none", bg="none", }, -- Comment        xxx ctermfg=14 guifg=#b0b1b0 guibg=none guisp=none
    TSComment                              { Comment }, -- TSComment      xxx links to Comment
    TelescopeResultsComment                { Comment }, -- TelescopeResultsComment xxx links to Comment
    htmlComment                            { Comment }, -- htmlComment    xxx links to Comment
    javaScriptLineComment                  { Comment }, -- javaScriptLineComment xxx links to Comment
    javaScriptComment                      { Comment }, -- javaScriptComment xxx links to Comment
    htmlCssStyleComment                    { Comment }, -- htmlCssStyleComment xxx links to Comment
    vbComment                              { Comment }, -- vbComment      xxx links to Comment
    vbLineNumber                           { Comment }, -- vbLineNumber   xxx links to Comment
    cssComment                             { Comment }, -- cssComment     xxx links to Comment
    cssVendor                              { Comment }, -- cssVendor      xxx links to Comment
    cssHacks                               { Comment }, -- cssHacks       xxx links to Comment
    markdownBlockquote                     { Comment }, -- markdownBlockquote xxx links to Comment
    vimComment                             { Comment }, -- vimComment     xxx links to Comment
    vim9Comment                            { Comment }, -- vim9Comment    xxx links to Comment
    luaComment                             { Comment }, -- luaComment     xxx links to Comment
    vimScriptDelim                         { Comment }, -- vimScriptDelim xxx links to Comment
    packerRelDate                          { Comment }, -- packerRelDate  xxx links to Comment
    packerPackageNotLoaded                 { Comment }, -- packerPackageNotLoaded xxx links to Comment
    NotifyLogTime                          { Comment }, -- NotifyLogTime  xxx links to Comment
    Underlined                             { fg="#80a0ff", gui="underline", }, -- Underlined     xxx cterm=underline ctermfg=81 gui=underline guifg=#80a0ff
    TSURI                                  { Underlined }, -- TSURI          xxx links to Underlined
    htmlLink                               { Underlined }, -- htmlLink       xxx links to Underlined
    Ignore                                 { fg="bg", }, -- Ignore         xxx ctermfg=0 guifg=bg
    NvimInternalError                      { fg="red", bg="red", }, -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=red guibg=red
    NvimFigureBrace                        { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
    NvimSingleQuotedUnknownEscape          { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
    NvimInvalidSingleQuotedUnknownEscape   { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
    vimcommand                             { fg="#81a2be", sp="none", bg="none", }, -- vimcommand     xxx guifg=#81a2be guibg=none guisp=none
    vimAbb                                 { vimcommand }, -- vimAbb         xxx links to vimcommand
    vimEchoHL                              { vimcommand }, -- vimEchoHL      xxx links to vimcommand
    vimHighlight                           { vimcommand }, -- vimHighlight   xxx links to vimcommand
    vimNorm                                { vimcommand }, -- vimNorm        xxx links to vimcommand
    vimUserCommand                         { vimcommand }, -- vimUserCommand xxx links to vimcommand
    vimMapBang                             { vimcommand }, -- vimMapBang     xxx links to vimcommand
    vimAutoSet                             { vimcommand }, -- vimAutoSet     xxx links to vimcommand
    vimCondHL                              { vimcommand }, -- vimCondHL      xxx links to vimcommand
    vimSubst                               { vimcommand }, -- vimSubst       xxx links to vimcommand
    vimAutoCmd                             { vimcommand }, -- vimAutoCmd     xxx links to vimcommand
    vimSyntax                              { vimcommand }, -- vimSyntax      xxx links to vimcommand
    vimBehave                              { vimcommand }, -- vimBehave      xxx links to vimcommand
    vimFTCmd                               { vimcommand }, -- vimFTCmd       xxx links to vimcommand
    vimAugroupKey                          { vimcommand }, -- vimAugroupKey  xxx links to vimcommand
    vimFuncKey                             { vimcommand }, -- vimFuncKey     xxx links to vimcommand
    vimlet                                 { fg="#aa92cd", sp="none", bg="none", }, -- vimlet         xxx guifg=#aa92cd guibg=none guisp=none
    vimfuncvar                             { fg="#8e6fbd", sp="none", bg="none", }, -- vimfuncvar     xxx guifg=#8e6fbd guibg=none guisp=none
    vimcommenttitle                        { fg="#cc6666", gui="bold", sp="none", bg="none", }, -- vimcommenttitle xxx gui=bold guifg=#cc6666 guibg=none guisp=none
    vimiscommand                           { fg="#aa92cd", sp="none", bg="none", }, -- vimiscommand   xxx guifg=#aa92cd guibg=none guisp=none
    vimmapmodkey                           { fg="#8abeb7", sp="none", bg="none", }, -- vimmapmodkey   xxx guifg=#8abeb7 guibg=none guisp=none
    vimnotation                            { fg="#8abeb7", sp="none", bg="none", }, -- vimnotation    xxx guifg=#8abeb7 guibg=none guisp=none
    vimmaplhs                              { fg="#f8fe7a", sp="none", bg="none", }, -- vimmaplhs      xxx guifg=#f8fe7a guibg=none guisp=none
    vimbracket                             { fg="#96535c", sp="none", bg="none", }, -- vimbracket     xxx guifg=#96535c guibg=none guisp=none
    vimMapMod                              { vimbracket }, -- vimMapMod      xxx links to vimbracket
    DevIconScss                            { fg="#f55385", }, -- DevIconScss    xxx guifg=#f55385
    vimmap                                 { fg="#698b69", sp="none", bg="none", }, -- vimmap         xxx guifg=#698b69 guibg=none guisp=none
    vimUnmap                               { vimmap }, -- vimUnmap       xxx links to vimmap
    nvimmap                                { fg="#698b69", sp="none", bg="none", }, -- nvimmap        xxx guifg=#698b69 guibg=none guisp=none
    luastatement                           { fg="#f6fe47", gui="bold", sp="none", bg="none", }, -- luastatement   xxx gui=bold guifg=#f6fe47 guibg=none guisp=none
    DevIconYml                             { fg="#6d8086", }, -- DevIconYml     xxx guifg=#6d8086
    DevIconCss                             { fg="#563d7c", }, -- DevIconCss     xxx guifg=#563d7c
    luakeyword                             { fg="#d67634", gui="bold", sp="none", bg="none", }, -- luakeyword     xxx gui=bold guifg=#d67634 guibg=none guisp=none
    DevIconHs                              { fg="#a074c4", }, -- DevIconHs      xxx guifg=#a074c4
    luamykeyword                           { fg="#aa92cd", gui="bold", sp="none", bg="none", }, -- luamykeyword   xxx gui=bold guifg=#aa92cd guibg=none guisp=none
    luaspecialfunctions                    { fg="#a3bbd0", sp="none", bg="none", }, -- luaspecialfunctions xxx guifg=#a3bbd0 guibg=none guisp=none
    DevIconMixLock                         { fg="#a074c4", }, -- DevIconMixLock xxx guifg=#a074c4
    luametatableevents                     { fg="#8e6fbd", sp="none", bg="none", }, -- luametatableevents xxx guifg=#8e6fbd guibg=none guisp=none
    luametatablearithmetic                 { fg="#8e6fbd", sp="none", bg="none", }, -- luametatablearithmetic xxx guifg=#8e6fbd guibg=none guisp=none
    luametatableequivalence                { fg="#8e6fbd", sp="none", bg="none", }, -- luametatableequivalence xxx guifg=#8e6fbd guibg=none guisp=none
    sqlkeyword                             { fg="#cc6666", sp="none", bg="none", }, -- sqlkeyword     xxx guifg=#cc6666 guibg=none guisp=none
    htmlh1                                 { fg="#81a2be", sp="none", bg="none", }, -- htmlh1         xxx guifg=#81a2be guibg=none guisp=none
    htmlH2                                 { htmlh1 }, -- htmlH2         xxx links to htmlh1
    lspreferenceread                       { fg="none", sp="none", bg="#3e4451", }, -- lspreferenceread xxx guifg=none guibg=#3e4451 guisp=none
    DevIconDesktopEntry                    { fg="#563d7c", }, -- DevIconDesktopEntry xxx guifg=#563d7c
    mkdlinebreak                           { fg="none", sp="none", bg="none", }, -- mkdlinebreak   xxx guifg=none guibg=none guisp=none
    markdownh1                             { fg="#81a2be", gui="bold,italic", sp="none", bg="none", }, -- markdownh1     xxx gui=bold,italic guifg=#81a2be guibg=none guisp=none
    markdownh2                             { fg="#a3bbd0", gui="bold", sp="none", bg="none", }, -- markdownh2     xxx gui=bold guifg=#a3bbd0 guibg=none guisp=none
    markdownh3                             { fg="#c5d4e1", gui="italic", sp="none", bg="none", }, -- markdownh3     xxx gui=italic guifg=#c5d4e1 guibg=none guisp=none
    DevIconSql                             { fg="#dad8d8", }, -- DevIconSql     xxx guifg=#dad8d8
    DevIconJava                            { fg="#cc3e44", }, -- DevIconJava    xxx guifg=#cc3e44
    tsgenerics                             { fg="#5f89ad", gui="italic", sp="none", bg="none", }, -- tsgenerics     xxx gui=italic guifg=#5f89ad guibg=none guisp=none
    tsxtypes                               { fg="#a3bbd0", gui="bold,italic", sp="none", bg="none", }, -- tsxtypes       xxx gui=bold,italic guifg=#a3bbd0 guibg=none guisp=none
    typescriptbraces                       { fg="#5f89ad", sp="none", bg="none", }, -- typescriptbraces xxx guifg=#5f89ad guibg=none guisp=none
    tsxelseoperator                        { fg="#f8fe7a", sp="none", bg="none", }, -- tsxelseoperator xxx guifg=#f8fe7a guibg=none guisp=none
    typescripttype                         { fg="#b294bb", gui="bold,italic", sp="none", bg="none", }, -- typescripttype xxx gui=bold,italic guifg=#b294bb guibg=none guisp=none
    typescriptstorageclass                 { fg="#aa92cd", sp="none", bg="none", }, -- typescriptstorageclass xxx guifg=#aa92cd guibg=none guisp=none
    tsxtagname                             { fg="#de935f", sp="none", bg="none", }, -- tsxtagname     xxx guifg=#de935f guibg=none guisp=none
    tsxclosetagname                        { fg="#de935f", sp="none", bg="none", }, -- tsxclosetagname xxx guifg=#de935f guibg=none guisp=none
    tsxtag                                 { fg="#e7b089", gui="italic", sp="none", bg="none", }, -- tsxtag         xxx gui=italic guifg=#e7b089 guibg=none guisp=none
    tsxcomponentname                       { fg="#de935f", sp="none", bg="none", }, -- tsxcomponentname xxx guifg=#de935f guibg=none guisp=none
    typescriptdecorators                   { fg="#77bb77", sp="none", bg="none", }, -- typescriptdecorators xxx guifg=#77bb77 guibg=none guisp=none
    DevIconVimrc                           { fg="#019833", }, -- DevIconVimrc   xxx guifg=#019833
    typescriptendcolons                    { fg="#aa92cd", sp="none", bg="none", }, -- typescriptendcolons xxx guifg=#aa92cd guibg=none guisp=none
    semshiimported                         { fg="#81a2be", sp="none", bg="none", }, -- semshiimported xxx guifg=#81a2be guibg=none guisp=none
    startifybracket                        { fg="#cc6666", sp="none", bg="none", }, -- startifybracket xxx guifg=#cc6666 guibg=none guisp=none
    startifynumber                         { fg="#81a2be", sp="none", bg="none", }, -- startifynumber xxx guifg=#81a2be guibg=none guisp=none
    startifypath                           { fg="#77bb77", sp="none", bg="none", }, -- startifypath   xxx guifg=#77bb77 guibg=none guisp=none
    startifyslash                          { fg="#8abeb7", gui="bold", sp="none", bg="none", }, -- startifyslash  xxx gui=bold guifg=#8abeb7 guibg=none guisp=none
    startifysection                        { fg="#fbffad", sp="none", bg="none", }, -- startifysection xxx guifg=#fbffad guibg=none guisp=none
    startifyspecial                        { fg="#de935f", sp="none", bg="none", }, -- startifyspecial xxx guifg=#de935f guibg=none guisp=none
    startifyheader                         { fg="#de935f", sp="none", bg="none", }, -- startifyheader xxx guifg=#de935f guibg=none guisp=none
    startifyfooter                         { fg="#373b41", sp="none", bg="none", }, -- startifyfooter xxx guifg=#373b41 guibg=none guisp=none
    tsvariable                             { fg="#e0e0e0", sp="none", bg="none", }, -- tsvariable     xxx guifg=#e0e0e0 guibg=none guisp=none
    vimTSVariable                          { tsvariable }, -- vimTSVariable  xxx links to tsvariable
    luaTSVariable                          { tsvariable }, -- luaTSVariable  xxx links to tsvariable
    graphqltsproperty                      { fg="#81a2be", sp="none", bg="none", }, -- graphqltsproperty xxx guifg=#81a2be guibg=none guisp=none
    vimwikibold                            { fg="#cc6666", gui="bold", sp="none", bg="none", }, -- vimwikibold    xxx gui=bold guifg=#cc6666 guibg=none guisp=none
    DevIconWebmanifest                     { fg="#f1e05a", }, -- DevIconWebmanifest xxx guifg=#f1e05a
    semshifree                             { fg="none", sp="none", bg="none", }, -- semshifree     xxx guifg=none guibg=none guisp=none
    DevIconHxx                             { fg="#a074c4", }, -- DevIconHxx     xxx guifg=#a074c4
    ZenBg                                  { fg="#272b33", bg="#272b33", }, -- ZenBg          xxx guifg=#272b33 guibg=#272b33
    DevIconDockerfile                      { fg="#384d54", }, -- DevIconDockerfile xxx guifg=#384d54
    BufferTypeSeparator                    { bg="#202328", }, -- BufferTypeSeparator xxx guibg=#202328
    DevIconPhp                             { fg="#a074c4", }, -- DevIconPhp     xxx guifg=#a074c4
    FileEncodeSeparator                    { bg="#202328", }, -- FileEncodeSeparator xxx guibg=#202328
    FileFormatSeparator                    { bg="#202328", }, -- FileFormatSeparator xxx guibg=#202328
    GitIconSeparator                       { bg="#202328", }, -- GitIconSeparator xxx guibg=#202328
    LineInfoSeparator                      { bg="#202328", }, -- LineInfoSeparator xxx guibg=#202328
    DevIconVim                             { fg="#019833", }, -- DevIconVim     xxx guifg=#019833
    lspreferencewrite                      { fg="none", sp="none", bg="#3e4451", }, -- lspreferencewrite xxx guifg=none guibg=#3e4451 guisp=none
    DevIconCp                              { fg="#519aba", }, -- DevIconCp      xxx guifg=#519aba
    DevIconMjs                             { fg="#f1e05a", }, -- DevIconMjs     xxx guifg=#f1e05a
    DevIconGitCommit                       { fg="#41535b", }, -- DevIconGitCommit xxx guifg=#41535b
    DevIconBabelrc                         { fg="#cbcb41", }, -- DevIconBabelrc xxx guifg=#cbcb41
    DevIconBinaryGLTF                      { fg="#ffb13b", }, -- DevIconBinaryGLTF xxx guifg=#ffb13b
    DevIconHtm                             { fg="#e34c26", }, -- DevIconHtm     xxx guifg=#e34c26
    DevIconTerminal                        { fg="#31b53e", }, -- DevIconTerminal xxx guifg=#31b53e
    DevIconHtml                            { fg="#e34c26", }, -- DevIconHtml    xxx guifg=#e34c26
    DevIconLicense                         { fg="#cbcb41", }, -- DevIconLicense xxx guifg=#cbcb41
    DevIconH                               { fg="#a074c4", }, -- DevIconH       xxx guifg=#a074c4
    DevIconJson                            { fg="#cbcb41", }, -- DevIconJson    xxx guifg=#cbcb41
    DevIconXml                             { fg="#e37933", }, -- DevIconXml     xxx guifg=#e37933
    DevIconCPlusPlus                       { fg="#f34b7d", }, -- DevIconCPlusPlus xxx guifg=#f34b7d
    DevIconConfigRu                        { fg="#701516", }, -- DevIconConfigRu xxx guifg=#701516
    DevIconMdx                             { fg="#519aba", }, -- DevIconMdx     xxx guifg=#519aba
    DevIconCrystal                         { fg="#000000", }, -- DevIconCrystal xxx guifg=#000000
    DevIconXul                             { fg="#e37933", }, -- DevIconXul     xxx guifg=#e37933
    DevIconCson                            { fg="#cbcb41", }, -- DevIconCson    xxx guifg=#cbcb41
    DevIconD                               { fg="#427819", }, -- DevIconD       xxx guifg=#427819
    DevIconDb                              { fg="#dad8d8", }, -- DevIconDb      xxx guifg=#dad8d8
    DevIconAwk                             { fg="#4d5a5e", }, -- DevIconAwk     xxx guifg=#4d5a5e
    DevIconTextScene                       { fg="#a074c4", }, -- DevIconTextScene xxx guifg=#a074c4
    DevIconR                               { fg="#358a5b", }, -- DevIconR       xxx guifg=#358a5b
    DevIconGitAttributes                   { fg="#41535b", }, -- DevIconGitAttributes xxx guifg=#41535b
    DevIconNPMIgnore                       { fg="#e8274b", }, -- DevIconNPMIgnore xxx guifg=#e8274b
    TodoBgNOTE                             { fg="#282c34", gui="bold", bg="#10b981", }, -- TodoBgNOTE     xxx gui=bold guifg=#282c34 guibg=#10b981
    DevIconJs                              { fg="#cbcb41", }, -- DevIconJs      xxx guifg=#cbcb41
    DevIconEjs                             { fg="#cbcb41", }, -- DevIconEjs     xxx guifg=#cbcb41
    DevIconMli                             { fg="#e37933", }, -- DevIconMli     xxx guifg=#e37933
    DevIconGemspec                         { fg="#701516", }, -- DevIconGemspec xxx guifg=#701516
    DevIconMustache                        { fg="#e37933", }, -- DevIconMustache xxx guifg=#e37933
    DevIconFavicon                         { fg="#cbcb41", }, -- DevIconFavicon xxx guifg=#cbcb41
    DevIconConfiguration                   { fg="#ececec", }, -- DevIconConfiguration xxx guifg=#ececec
    TodoFgTODO                             { fg="#0c99f7", }, -- TodoFgTODO     xxx guifg=#0c99f7
    DevIconFsi                             { fg="#519aba", }, -- DevIconFsi     xxx guifg=#519aba
    LuaFunctionCall                        { fg="#5f89ad", sp="none", bg="none", }, -- LuaFunctionCall xxx guifg=#5f89ad guibg=none guisp=none
    invnormal                              { fg="#282c34", sp="none", bg="#c5c8c6", }, -- invnormal      xxx guifg=#282c34 guibg=#c5c8c6 guisp=none
    qffilename                             { fg="#aed75f", gui="bold", sp="none", bg="none", }, -- qffilename     xxx gui=bold guifg=#aed75f guibg=none guisp=none
    netrwDir                               { fg="#5eacd3", }, -- netrwDir       xxx guifg=#5eacd3
    NotifyWARNTitle                        { fg="#f79000", }, -- NotifyWARNTitle xxx guifg=#f79000
    NotifyINFOTitle                        { fg="#a9ff68", }, -- NotifyINFOTitle xxx guifg=#a9ff68
    NotifyTRACETitle                       { fg="#d484ff", }, -- NotifyTRACETitle xxx guifg=#d484ff
    NotifyDEBUGTitle                       { fg="#8b8b8b", }, -- NotifyDEBUGTitle xxx guifg=#8b8b8b
    NotifyERRORTitle                       { fg="#f70067", }, -- NotifyERRORTitle xxx guifg=#f70067
    NotifyERRORBorder                      { fg="#8a1f1f", }, -- NotifyERRORBorder xxx guifg=#8a1f1f
    NotifyWARNBorder                       { fg="#79491d", }, -- NotifyWARNBorder xxx guifg=#79491d
    NotifyINFOBorder                       { fg="#4f6752", }, -- NotifyINFOBorder xxx guifg=#4f6752
    NotifyDEBUGBorder                      { fg="#8b8b8b", }, -- NotifyDEBUGBorder xxx guifg=#8b8b8b
    NotifyTRACEBorder                      { fg="#4f3552", }, -- NotifyTRACEBorder xxx guifg=#4f3552
    NotifyERRORIcon                        { fg="#f70067", }, -- NotifyERRORIcon xxx guifg=#f70067
    NotifyWARNIcon                         { fg="#f79000", }, -- NotifyWARNIcon xxx guifg=#f79000
    NotifyINFOIcon                         { fg="#a9ff68", }, -- NotifyINFOIcon xxx guifg=#a9ff68
    NotifyDEBUGIcon                        { fg="#8b8b8b", }, -- NotifyDEBUGIcon xxx guifg=#8b8b8b
    NotifyTRACEIcon                        { fg="#d484ff", }, -- NotifyTRACEIcon xxx guifg=#d484ff
    NotifyINFOTitle267                     { fg="#2e3536", }, -- NotifyINFOTitle267 xxx guifg=#2e3536
    NotifyINFOBorder267                    { fg="#2a2f35", }, -- NotifyINFOBorder267 xxx guifg=#2a2f35
    NotifyINFOBody267                      { fg="#30343c", bg="#282c34", }, -- NotifyINFOBody267 xxx guifg=#30343c guibg=#282c34
    NotifyINFOIcon267                      { fg="#2e3536", }, -- NotifyINFOIcon267 xxx guifg=#2e3536
    insertmode                             { fg="#ffffff", gui="bold", sp="none", bg="#f8fe7a", }, -- insertmode     xxx gui=bold guifg=#ffffff guibg=#f8fe7a guisp=none
    DevIconCMakeLists                      { fg="#6d8086", }, -- DevIconCMakeLists xxx guifg=#6d8086
    DevIconSig                             { fg="#e37933", }, -- DevIconSig     xxx guifg=#e37933
    DevIconRs                              { fg="#dea584", }, -- DevIconRs      xxx guifg=#dea584
    DevIconBmp                             { fg="#a074c4", }, -- DevIconBmp     xxx guifg=#a074c4
    DevIconGvimrc                          { fg="#019833", }, -- DevIconGvimrc  xxx guifg=#019833
    DevIconCMake                           { fg="#6d8086", }, -- DevIconCMake   xxx guifg=#6d8086
    DevIconZshenv                          { fg="#89e051", }, -- DevIconZshenv  xxx guifg=#89e051
    DevIconVagrantfile                     { fg="#1563ff", }, -- DevIconVagrantfile xxx guifg=#1563ff
    DevIconGitModules                      { fg="#41535b", }, -- DevIconGitModules xxx guifg=#41535b
    visualmode                             { fg="none", sp="none", bg="#38556d", }, -- visualmode     xxx guifg=none guibg=#38556d guisp=none
    DevIconGemfile                         { fg="#701516", }, -- DevIconGemfile xxx guifg=#701516
    foldbraces                             { fg="#f2e5bc", sp="none", bg="none", }, -- foldbraces     xxx guifg=#f2e5bc guibg=none guisp=none
    semshilocal                            { fg="none", sp="none", bg="none", }, -- semshilocal    xxx guifg=none guibg=none guisp=none
    semshiselected                         { fg="none", sp="none", bg="#3e4451", }, -- semshiselected xxx guifg=none guibg=#3e4451 guisp=none
    startifyfile                           { fg="#c04040", sp="none", bg="none", }, -- startifyfile   xxx guifg=#c04040 guibg=none guisp=none
    DevIconGodotProject                    { fg="#6d8086", }, -- DevIconGodotProject xxx guifg=#6d8086
    DevIconGitlabCI                        { fg="#e24329", }, -- DevIconGitlabCI xxx guifg=#e24329
    DevIconClojureC                        { fg="#8dc149", }, -- DevIconClojureC xxx guifg=#8dc149
    DevIconMaterial                        { fg="#b83998", }, -- DevIconMaterial xxx guifg=#b83998
    DevIconZig                             { fg="#f69a1b", }, -- DevIconZig     xxx guifg=#f69a1b
    DevIconGitIgnore                       { fg="#41535b", }, -- DevIconGitIgnore xxx guifg=#41535b
    DevIconBashrc                          { fg="#89e051", }, -- DevIconBashrc  xxx guifg=#89e051
    DevIconHh                              { fg="#a074c4", }, -- DevIconHh      xxx guifg=#a074c4
    semshiself                             { fg="#c9b3cf", sp="none", bg="none", }, -- semshiself     xxx guifg=#c9b3cf guibg=none guisp=none
    tsxclosecomponentname                  { fg="#de935f", sp="none", bg="none", }, -- tsxclosecomponentname xxx guifg=#de935f guibg=none guisp=none
    tsxclosetag                            { fg="#e7b089", sp="none", bg="none", }, -- tsxclosetag    xxx guifg=#e7b089 guibg=none guisp=none
    luaemmyfluff                           { fg="#ced0ce", sp="none", bg="none", }, -- luaemmyfluff   xxx guifg=#ced0ce guibg=none guisp=none
    DevIconCobol                           { fg="#005ca5", }, -- DevIconCobol   xxx guifg=#005ca5
    DevIconProlog                          { fg="#e4b854", }, -- DevIconProlog  xxx guifg=#e4b854
    DevIconFsharp                          { fg="#519aba", }, -- DevIconFsharp  xxx guifg=#519aba
    DevIconTor                             { fg="#519aba", }, -- DevIconTor     xxx guifg=#519aba
    DevIconTs                              { fg="#519aba", }, -- DevIconTs      xxx guifg=#519aba
    DevIconC                               { fg="#599eff", }, -- DevIconC       xxx guifg=#599eff
    DevIconFsx                             { fg="#519aba", }, -- DevIconFsx     xxx guifg=#519aba
    DevIconGif                             { fg="#a074c4", }, -- DevIconGif     xxx guifg=#a074c4
    DevIconGitConfig                       { fg="#41535b", }, -- DevIconGitConfig xxx guifg=#41535b
    DevIconDump                            { fg="#dad8d8", }, -- DevIconDump    xxx guifg=#dad8d8
    DevIconConf                            { fg="#6d8086", }, -- DevIconConf    xxx guifg=#6d8086
    DevIconNodeModules                     { fg="#e8274b", }, -- DevIconNodeModules xxx guifg=#e8274b
    DevIconIco                             { fg="#cbcb41", }, -- DevIconIco     xxx guifg=#cbcb41
    DevIconJpeg                            { fg="#a074c4", }, -- DevIconJpeg    xxx guifg=#a074c4
    DevIconJpg                             { fg="#a074c4", }, -- DevIconJpg     xxx guifg=#a074c4
    DevIconDefault                         { fg="#6d8086", }, -- DevIconDefault xxx guifg=#6d8086
    DevIconExs                             { fg="#a074c4", }, -- DevIconExs     xxx guifg=#a074c4
    DevIconErl                             { fg="#b83998", }, -- DevIconErl     xxx guifg=#b83998
    DevIconLhs                             { fg="#a074c4", }, -- DevIconLhs     xxx guifg=#a074c4
    DevIconKotlin                          { fg="#f88a02", }, -- DevIconKotlin  xxx guifg=#f88a02
    DevIconHaml                            { fg="#eaeae1", }, -- DevIconHaml    xxx guifg=#eaeae1
    DevIconTex                             { fg="#3d6117", }, -- DevIconTex     xxx guifg=#3d6117
    DevIconJl                              { fg="#a270ba", }, -- DevIconJl      xxx guifg=#a270ba
    DevIconCoffee                          { fg="#cbcb41", }, -- DevIconCoffee  xxx guifg=#cbcb41
    DevIconErb                             { fg="#701516", }, -- DevIconErb     xxx guifg=#701516
    DevIconSvg                             { fg="#ffb13b", }, -- DevIconSvg     xxx guifg=#ffb13b
    DevIconBash                            { fg="#89e051", }, -- DevIconBash    xxx guifg=#89e051
    DevIconEdn                             { fg="#519aba", }, -- DevIconEdn     xxx guifg=#519aba
    DevIconZsh                             { fg="#89e051", }, -- DevIconZsh     xxx guifg=#89e051
    TodoBgHACK                             { fg="#e0e0e0", gui="bold", bg="#ff0000", }, -- TodoBgHACK     xxx gui=bold guifg=#e0e0e0 guibg=#ff0000
    TodoSignFIX                            { fg="#ffffff", bg="#282a2e", }, -- TodoSignFIX    xxx guifg=#ffffff guibg=#282a2e
    TodoFgFIX                              { fg="#ffffff", }, -- TodoFgFIX      xxx guifg=#ffffff
    TodoBgFIX                              { fg="#282c34", gui="bold", bg="#ffffff", }, -- TodoBgFIX      xxx gui=bold guifg=#282c34 guibg=#ffffff
    DevIconNix                             { fg="#7ebae4", }, -- DevIconNix     xxx guifg=#7ebae4
    TodoBgTODO                             { fg="#e0e0e0", gui="bold", bg="#2563eb", }, -- TodoBgTODO     xxx gui=bold guifg=#e0e0e0 guibg=#2563eb
    TodoSignWARN                           { fg="#ff0000", bg="#282a2e", }, -- TodoSignWARN   xxx guifg=#ff0000 guibg=#282a2e
    TodoBgWARN                             { fg="#e0e0e0", gui="bold", bg="#ff0000", }, -- TodoBgWARN     xxx gui=bold guifg=#e0e0e0 guibg=#ff0000
    TodoSignNOTE                           { fg="#10b981", bg="#282a2e", }, -- TodoSignNOTE   xxx guifg=#10b981 guibg=#282a2e
    TSKeyword                              { fg="#81a2be", gui="bold", sp="none", bg="none", }, -- TSKeyword      xxx gui=bold guifg=#81a2be guibg=none guisp=none
    TSKeywordReturn                        { TSKeyword }, -- TSKeywordReturn xxx links to TSKeyword
    TodoFgNOTE                             { fg="#10b981", }, -- TodoFgNOTE     xxx guifg=#10b981
    PerCentSeparator                       { bg="#202328", }, -- PerCentSeparator xxx guibg=#202328
    DevIconFs                              { fg="#519aba", }, -- DevIconFs      xxx guifg=#519aba
    DevIconPdf                             { fg="#b30b00", }, -- DevIconPdf     xxx guifg=#b30b00
    DevIconIni                             { fg="#6d8086", }, -- DevIconIni     xxx guifg=#6d8086
    DevIconBashProfile                     { fg="#89e051", }, -- DevIconBashProfile xxx guifg=#89e051
    DevIconCs                              { fg="#596706", }, -- DevIconCs      xxx guifg=#596706
    DevIconPyc                             { fg="#519aba", }, -- DevIconPyc     xxx guifg=#519aba
    DevIconSh                              { fg="#4d5a5e", }, -- DevIconSh      xxx guifg=#4d5a5e
    DevIconZshprofile                      { fg="#89e051", }, -- DevIconZshprofile xxx guifg=#89e051
    DevIconDart                            { fg="#03589c", }, -- DevIconDart    xxx guifg=#03589c
    IncludedC                              { bg="#373b41", }, -- IncludedC      xxx guibg=#373b41
    DapUIScope                             { fg="#00f1f5", }, -- DapUIScope     xxx guifg=#00f1f5
    DevIconMakefile                        { fg="#6d8086", }, -- DevIconMakefile xxx guifg=#6d8086
    DapUIType                              { fg="#d484ff", }, -- DapUIType      xxx guifg=#d484ff
    DevIconGitLogo                         { fg="#f14c28", }, -- DevIconGitLogo xxx guifg=#f14c28
    DapUIModifiedValue                     { fg="#00f1f5", gui="bold", }, -- DapUIModifiedValue xxx gui=bold guifg=#00f1f5
    DapUIDecoration                        { fg="#00f1f5", }, -- DapUIDecoration xxx guifg=#00f1f5
    DapUIThread                            { fg="#a9ff68", }, -- DapUIThread    xxx guifg=#a9ff68
    DevIconOPUS                            { fg="#f88a02", }, -- DevIconOPUS    xxx guifg=#f88a02
    DapUIStoppedThread                     { fg="#00f1f5", }, -- DapUIStoppedThread xxx guifg=#00f1f5
    DapUISource                            { fg="#d484ff", }, -- DapUISource    xxx guifg=#d484ff
    DapUILineNumber                        { fg="#00f1f5", }, -- DapUILineNumber xxx guifg=#00f1f5
    DapUIBreakpointsLine                   { DapUILineNumber }, -- DapUIBreakpointsLine xxx links to DapUILineNumber
    DapUIFloatBorder                       { fg="#00f1f5", }, -- DapUIFloatBorder xxx guifg=#00f1f5
    DapUIWatchesEmpty                      { fg="#f70067", }, -- DapUIWatchesEmpty xxx guifg=#f70067
    DevIconWebp                            { fg="#a074c4", }, -- DevIconWebp    xxx guifg=#a074c4
    DapUIWatchesValue                      { fg="#a9ff68", }, -- DapUIWatchesValue xxx guifg=#a9ff68
    DapUIWatchesError                      { fg="#f70067", }, -- DapUIWatchesError xxx guifg=#f70067
    DapUIBreakpointsPath                   { fg="#00f1f5", }, -- DapUIBreakpointsPath xxx guifg=#00f1f5
    DapUIBreakpointsInfo                   { fg="#a9ff68", }, -- DapUIBreakpointsInfo xxx guifg=#a9ff68
    DapUIBreakpointsCurrentLine            { fg="#a9ff68", gui="bold", }, -- DapUIBreakpointsCurrentLine xxx gui=bold guifg=#a9ff68
    CmpItemAbbrDefault                     { fg="#b4b7b4", }, -- CmpItemAbbrDefault xxx guifg=#b4b7b4
    CmpItemAbbrDeprecatedDefault           { fg="#80a0ff", }, -- CmpItemAbbrDeprecatedDefault xxx guifg=#80a0ff
    CmpItemAbbrMatchDefault                { fg="#b4b7b4", }, -- CmpItemAbbrMatchDefault xxx guifg=#b4b7b4
    CmpItemAbbrMatch                       { CmpItemAbbrMatchDefault }, -- CmpItemAbbrMatch xxx links to CmpItemAbbrMatchDefault
    CmpItemAbbrMatchFuzzyDefault           { fg="#b4b7b4", }, -- CmpItemAbbrMatchFuzzyDefault xxx guifg=#b4b7b4
    CmpItemKindDefault                     { fg="#d484ff", }, -- CmpItemKindDefault xxx guifg=#d484ff
    CmpItemKindConstantDefault             { CmpItemKindDefault }, -- CmpItemKindConstantDefault xxx links to CmpItemKindDefault
    CmpItemKindStructDefault               { CmpItemKindDefault }, -- CmpItemKindStructDefault xxx links to CmpItemKindDefault
    CmpItemKindEventDefault                { CmpItemKindDefault }, -- CmpItemKindEventDefault xxx links to CmpItemKindDefault
    CmpItemKindOperatorDefault             { CmpItemKindDefault }, -- CmpItemKindOperatorDefault xxx links to CmpItemKindDefault
    CmpItemKindTypeParameterDefault        { CmpItemKindDefault }, -- CmpItemKindTypeParameterDefault xxx links to CmpItemKindDefault
    CmpItemKindTextDefault                 { CmpItemKindDefault }, -- CmpItemKindTextDefault xxx links to CmpItemKindDefault
    CmpItemKindMethodDefault               { CmpItemKindDefault }, -- CmpItemKindMethodDefault xxx links to CmpItemKindDefault
    CmpItemKindFunctionDefault             { CmpItemKindDefault }, -- CmpItemKindFunctionDefault xxx links to CmpItemKindDefault
    CmpItemKindConstructorDefault          { CmpItemKindDefault }, -- CmpItemKindConstructorDefault xxx links to CmpItemKindDefault
    CmpItemKindFieldDefault                { CmpItemKindDefault }, -- CmpItemKindFieldDefault xxx links to CmpItemKindDefault
    CmpItemKindVariableDefault             { CmpItemKindDefault }, -- CmpItemKindVariableDefault xxx links to CmpItemKindDefault
    CmpItemKindClassDefault                { CmpItemKindDefault }, -- CmpItemKindClassDefault xxx links to CmpItemKindDefault
    CmpItemKindInterfaceDefault            { CmpItemKindDefault }, -- CmpItemKindInterfaceDefault xxx links to CmpItemKindDefault
    CmpItemKindModuleDefault               { CmpItemKindDefault }, -- CmpItemKindModuleDefault xxx links to CmpItemKindDefault
    CmpItemKindPropertyDefault             { CmpItemKindDefault }, -- CmpItemKindPropertyDefault xxx links to CmpItemKindDefault
    CmpItemKindUnitDefault                 { CmpItemKindDefault }, -- CmpItemKindUnitDefault xxx links to CmpItemKindDefault
    CmpItemKindValueDefault                { CmpItemKindDefault }, -- CmpItemKindValueDefault xxx links to CmpItemKindDefault
    CmpItemKindEnumDefault                 { CmpItemKindDefault }, -- CmpItemKindEnumDefault xxx links to CmpItemKindDefault
    CmpItemKindKeywordDefault              { CmpItemKindDefault }, -- CmpItemKindKeywordDefault xxx links to CmpItemKindDefault
    CmpItemKindSnippetDefault              { CmpItemKindDefault }, -- CmpItemKindSnippetDefault xxx links to CmpItemKindDefault
    CmpItemKindColorDefault                { CmpItemKindDefault }, -- CmpItemKindColorDefault xxx links to CmpItemKindDefault
    CmpItemKindFileDefault                 { CmpItemKindDefault }, -- CmpItemKindFileDefault xxx links to CmpItemKindDefault
    CmpItemKindReferenceDefault            { CmpItemKindDefault }, -- CmpItemKindReferenceDefault xxx links to CmpItemKindDefault
    CmpItemKindFolderDefault               { CmpItemKindDefault }, -- CmpItemKindFolderDefault xxx links to CmpItemKindDefault
    CmpItemKindEnumMemberDefault           { CmpItemKindDefault }, -- CmpItemKindEnumMemberDefault xxx links to CmpItemKindDefault
    CmpItemMenuDefault                     { fg="#b4b7b4", }, -- CmpItemMenuDefault xxx guifg=#b4b7b4
    TSConstant                             { fg="#81a2be", sp="none", bg="none", }, -- TSConstant     xxx guifg=#81a2be guibg=none guisp=none
    luaTSConstant                          { TSConstant }, -- luaTSConstant  xxx links to TSConstant
    TSFunction                             { fg="#f8fe7a", sp="none", bg="none", }, -- TSFunction     xxx guifg=#f8fe7a guibg=none guisp=none
    luaTSFunction                          { TSFunction }, -- luaTSFunction  xxx links to TSFunction
    vimTSFunction                          { TSFunction }, -- vimTSFunction  xxx links to TSFunction
    TSInclude                              { fg="#8abeb7", sp="none", bg="none", }, -- TSInclude      xxx guifg=#8abeb7 guibg=none guisp=none
    TSVariableBuiltin                      { fg="#f8fe7a", sp="none", bg="none", }, -- TSVariableBuiltin xxx guifg=#f8fe7a guibg=none guisp=none
    vimTSVariableBuiltin                   { TSVariableBuiltin }, -- vimTSVariableBuiltin xxx links to TSVariableBuiltin
    TSStrong                               { gui="bold", }, -- TSStrong       xxx gui=bold
    CmpItemAbbrDeprecated                  { fg="#d98c8c", sp="none", bg="none", }, -- CmpItemAbbrDeprecated xxx guifg=#d98c8c guibg=none guisp=none
    TSUnderline                            { gui="underline", }, -- TSUnderline    xxx gui=underline
    TSStrike                               { gui="strikethrough", }, -- TSStrike       xxx gui=strikethrough
    OverLength                             { bg="#8b0000", }, -- OverLength     xxx guibg=#8b0000
    DevIconZshrc                           { fg="#89e051", }, -- DevIconZshrc   xxx guifg=#89e051
    TelescopeMatching                      { fg="#f2904b", gui="bold", sp="none", bg="none", }, -- TelescopeMatching xxx gui=bold guifg=#f2904b guibg=none guisp=none
    DevIconHeex                            { fg="#a074c4", }, -- DevIconHeex    xxx guifg=#a074c4
    user1                                  { fg="#ffffff", gui="bold", sp="none", bg="#f8fe7a", }, -- user1          xxx gui=bold guifg=#ffffff guibg=#f8fe7a guisp=none
    user2                                  { fg="#ffffff", gui="bold", sp="none", bg="#cc6666", }, -- user2          xxx gui=bold guifg=#ffffff guibg=#cc6666 guisp=none
    user3                                  { fg="#ffffff", gui="bold", sp="none", bg="#99cc99", }, -- user3          xxx gui=bold guifg=#ffffff guibg=#99cc99 guisp=none
    commandmode                            { fg="#ffffff", gui="bold", sp="none", bg="#99cc99", }, -- commandmode    xxx gui=bold guifg=#ffffff guibg=#99cc99 guisp=none
    normalmode                             { fg="#ffffff", gui="bold", sp="none", bg="#cc6666", }, -- normalmode     xxx gui=bold guifg=#ffffff guibg=#cc6666 guisp=none
    htmlItalic                             { gui="italic", }, -- htmlItalic     xxx gui=italic
    markdownItalic                         { htmlItalic }, -- markdownItalic xxx links to htmlItalic
    htmlUnderline                          { gui="underline", }, -- htmlUnderline  xxx gui=underline
    htmlUnderlineItalic                    { gui="underline,italic", }, -- htmlUnderlineItalic xxx gui=underline,italic
    htmlItalicUnderline                    { htmlUnderlineItalic }, -- htmlItalicUnderline xxx links to htmlUnderlineItalic
    DevIconTextResource                    { fg="#cbcb41", }, -- DevIconTextResource xxx guifg=#cbcb41
    htmlBoldUnderlineItalic                { gui="bold,underline,italic", }, -- htmlBoldUnderlineItalic xxx gui=bold,underline,italic
    htmlItalicUnderlineBold                { htmlBoldUnderlineItalic }, -- htmlItalicUnderlineBold xxx links to htmlBoldUnderlineItalic
    htmlItalicBoldUnderline                { htmlBoldUnderlineItalic }, -- htmlItalicBoldUnderline xxx links to htmlBoldUnderlineItalic
    htmlUnderlineItalicBold                { htmlBoldUnderlineItalic }, -- htmlUnderlineItalicBold xxx links to htmlBoldUnderlineItalic
    htmlUnderlineBoldItalic                { htmlBoldUnderlineItalic }, -- htmlUnderlineBoldItalic xxx links to htmlBoldUnderlineItalic
    htmlBoldItalicUnderline                { htmlBoldUnderlineItalic }, -- htmlBoldItalicUnderline xxx links to htmlBoldUnderlineItalic
    DevIconYaml                            { fg="#6d8086", }, -- DevIconYaml    xxx guifg=#6d8086
    htmlBold                               { gui="bold", }, -- htmlBold       xxx gui=bold
    markdownBold                           { htmlBold }, -- markdownBold   xxx links to htmlBold
    htmlBoldItalic                         { gui="bold,italic", }, -- htmlBoldItalic xxx gui=bold,italic
    markdownBoldItalic                     { htmlBoldItalic }, -- markdownBoldItalic xxx links to htmlBoldItalic
    htmlItalicBold                         { htmlBoldItalic }, -- htmlItalicBold xxx links to htmlBoldItalic
    DevIconPm                              { fg="#519aba", }, -- DevIconPm      xxx guifg=#519aba
    htmlBoldUnderline                      { gui="bold,underline", }, -- htmlBoldUnderline xxx gui=bold,underline
    htmlUnderlineBold                      { htmlBoldUnderline }, -- htmlUnderlineBold xxx links to htmlBoldUnderline
    DevIconRake                            { fg="#701516", }, -- DevIconRake    xxx guifg=#701516
    htmlStrike                             { gui="strikethrough", }, -- htmlStrike     xxx gui=strikethrough
    TodoSignPERF                           { fg="#cc6666", bg="#282a2e", }, -- TodoSignPERF   xxx guifg=#cc6666 guibg=#282a2e
    TodoFgPERF                             { fg="#cc6666", }, -- TodoFgPERF     xxx guifg=#cc6666
    TodoBgPERF                             { fg="#282c34", gui="bold", bg="#cc6666", }, -- TodoBgPERF     xxx gui=bold guifg=#282c34 guibg=#cc6666
    TodoSignHACK                           { fg="#ff0000", bg="#282a2e", }, -- TodoSignHACK   xxx guifg=#ff0000 guibg=#282a2e
    DevIconTwig                            { fg="#8dc149", }, -- DevIconTwig    xxx guifg=#8dc149
    TodoFgHACK                             { fg="#ff0000", }, -- TodoFgHACK     xxx guifg=#ff0000
    DevIconBat                             { fg="#c1f12e", }, -- DevIconBat     xxx guifg=#c1f12e
    DevIconPromptPs1                       { fg="#4d5a5e", }, -- DevIconPromptPs1 xxx guifg=#4d5a5e
    DevIconSuo                             { fg="#854cc7", }, -- DevIconSuo     xxx guifg=#854cc7
    DevIconRmd                             { fg="#519aba", }, -- DevIconRmd     xxx guifg=#519aba
    DevIconXls                             { fg="#207245", }, -- DevIconXls     xxx guifg=#207245
    DevIconMd                              { fg="#519aba", }, -- DevIconMd      xxx guifg=#519aba
    DevIconStyl                            { fg="#8dc149", }, -- DevIconStyl    xxx guifg=#8dc149
    DevIconPl                              { fg="#519aba", }, -- DevIconPl      xxx guifg=#519aba
    DevIconToml                            { fg="#6d8086", }, -- DevIconToml    xxx guifg=#6d8086
    DevIconLeex                            { fg="#a074c4", }, -- DevIconLeex    xxx guifg=#a074c4
    DevIconSln                             { fg="#854cc7", }, -- DevIconSln     xxx guifg=#854cc7
    DevIconDropbox                         { fg="#0061fe", }, -- DevIconDropbox xxx guifg=#0061fe
    DevIconVue                             { fg="#8dc149", }, -- DevIconVue     xxx guifg=#8dc149
    DevIconSlim                            { fg="#e34c26", }, -- DevIconSlim    xxx guifg=#e34c26
    DevIconPpt                             { fg="#cb4a32", }, -- DevIconPpt     xxx guifg=#cb4a32
    DevIconJsx                             { fg="#519aba", }, -- DevIconJsx     xxx guifg=#519aba
    DevIconScala                           { fg="#cc3e44", }, -- DevIconScala   xxx guifg=#cc3e44
    DevIconClojureJS                       { fg="#519aba", }, -- DevIconClojureJS xxx guifg=#519aba
    DevIconGruntfile                       { fg="#e37933", }, -- DevIconGruntfile xxx guifg=#e37933
    DevIconCpp                             { fg="#519aba", }, -- DevIconCpp     xxx guifg=#519aba
    DevIconPsd                             { fg="#519aba", }, -- DevIconPsd     xxx guifg=#519aba
    DevIconPy                              { fg="#3572a5", }, -- DevIconPy      xxx guifg=#3572a5
    DevIconGulpfile                        { fg="#cc3e44", }, -- DevIconGulpfile xxx guifg=#cc3e44
    DevIconGo                              { fg="#519aba", }, -- DevIconGo      xxx guifg=#519aba
    DevIconRakefile                        { fg="#701516", }, -- DevIconRakefile xxx guifg=#701516
    DevIconPp                              { fg="#302b6d", }, -- DevIconPp      xxx guifg=#302b6d
    DevIconRproj                           { fg="#358a5b", }, -- DevIconRproj   xxx guifg=#358a5b
    DevIconCsh                             { fg="#4d5a5e", }, -- DevIconCsh     xxx guifg=#4d5a5e
    DevIconTsx                             { fg="#519aba", }, -- DevIconTsx     xxx guifg=#519aba
    DevIconPackedResource                  { fg="#6d8086", }, -- DevIconPackedResource xxx guifg=#6d8086
    DevIconRlib                            { fg="#dea584", }, -- DevIconRlib    xxx guifg=#dea584
    DevIconWebpack                         { fg="#519aba", }, -- DevIconWebpack xxx guifg=#519aba
    DevIconRss                             { fg="#fb9d3b", }, -- DevIconRss     xxx guifg=#fb9d3b
    DevIconSml                             { fg="#e37933", }, -- DevIconSml     xxx guifg=#e37933
    DevIconCxx                             { fg="#519aba", }, -- DevIconCxx     xxx guifg=#519aba
    DevIconEx                              { fg="#a074c4", }, -- DevIconEx      xxx guifg=#a074c4
    DevIconSwift                           { fg="#e37933", }, -- DevIconSwift   xxx guifg=#e37933
    DevIconSass                            { fg="#f55385", }, -- DevIconSass    xxx guifg=#f55385
    DevIconXcPlayground                    { fg="#e37933", }, -- DevIconXcPlayground xxx guifg=#e37933
    DevIconDiff                            { fg="#41535b", }, -- DevIconDiff    xxx guifg=#41535b
    DevIconPyo                             { fg="#519aba", }, -- DevIconPyo     xxx guifg=#519aba
    DevIconMl                              { fg="#e37933", }, -- DevIconMl      xxx guifg=#e37933
    DevIconPyd                             { fg="#519aba", }, -- DevIconPyd     xxx guifg=#519aba
    DevIconElm                             { fg="#519aba", }, -- DevIconElm     xxx guifg=#519aba
    CmpItemAbbrMatchFuzzy                  { fg="#969896", gui="italic", sp="none", bg="none", }, -- CmpItemAbbrMatchFuzzy xxx gui=italic guifg=#969896 guibg=none guisp=none
    DevIconRb                              { fg="#701516", }, -- DevIconRb      xxx guifg=#701516
    DevIconSettingsJson                    { fg="#854cc7", }, -- DevIconSettingsJson xxx guifg=#854cc7
    DevIconHrl                             { fg="#b83998", }, -- DevIconHrl     xxx guifg=#b83998
    DevIconDsStore                         { fg="#41535b", }, -- DevIconDsStore xxx guifg=#41535b
    DevIconDoc                             { fg="#185abd", }, -- DevIconDoc     xxx guifg=#185abd
    DevIconGDScript                        { fg="#6d8086", }, -- DevIconGDScript xxx guifg=#6d8086
    DevIconPsb                             { fg="#519aba", }, -- DevIconPsb     xxx guifg=#519aba
    DevIconProcfile                        { fg="#a074c4", }, -- DevIconProcfile xxx guifg=#a074c4
    DevIconAi                              { fg="#cbcb41", }, -- DevIconAi      xxx guifg=#cbcb41
    DevIconSvelte                          { fg="#ff3e00", }, -- DevIconSvelte  xxx guifg=#ff3e00
    TodoFgWARN                             { fg="#ff0000", }, -- TodoFgWARN     xxx guifg=#ff0000
    DevIconMarkdown                        { fg="#519aba", }, -- DevIconMarkdown xxx guifg=#519aba
    DevIconEex                             { fg="#a074c4", }, -- DevIconEex     xxx guifg=#a074c4
    TodoSignTODO                           { fg="#2563eb", bg="#282a2e", }, -- TodoSignTODO   xxx guifg=#2563eb guibg=#282a2e
    DevIconPng                             { fg="#a074c4", }, -- DevIconPng     xxx guifg=#a074c4
    DevIconClojure                         { fg="#8dc149", }, -- DevIconClojure xxx guifg=#8dc149
    DevIconFish                            { fg="#4d5a5e", }, -- DevIconFish    xxx guifg=#4d5a5e
    DevIconOpenTypeFont                    { fg="#ececec", }, -- DevIconOpenTypeFont xxx guifg=#ececec
    DevIconImportConfiguration             { fg="#ececec", }, -- DevIconImportConfiguration xxx guifg=#ececec
    replacemode                            { fg="#ffffff", gui="bold,underline", sp="none", bg="#f8fe7a", }, -- replacemode    xxx gui=bold,underline guifg=#ffffff guibg=#f8fe7a guisp=none
    DevIconKsh                             { fg="#4d5a5e", }, -- DevIconKsh     xxx guifg=#4d5a5e
    terminalmode                           { fg="#ffffff", gui="bold", sp="none", bg="#698b69", }, -- terminalmode   xxx gui=bold guifg=#ffffff guibg=#698b69 guisp=none
    DevIconLua                             { fg="#51a0cf", }, -- DevIconLua     xxx guifg=#51a0cf
    helpdoc                                { fg="#ffffff", gui="bold,italic", sp="none", bg="#698b69", }, -- helpdoc        xxx gui=bold,italic guifg=#ffffff guibg=#698b69 guisp=none
    DevIconHbs                             { fg="#f0772b", }, -- DevIconHbs     xxx guifg=#f0772b
    CmpItemMenu                            { fg="#4e545c", sp="none", bg="none", }, -- CmpItemMenu    xxx guifg=#4e545c guibg=none guisp=none
    helpignore                             { fg="#99cc99", gui="bold,italic", sp="none", bg="none", }, -- helpignore     xxx gui=bold,italic guifg=#99cc99 guibg=none guisp=none
    visuallinemode                         { fg="none", sp="none", bg="#38556d", }, -- visuallinemode xxx guifg=none guibg=#38556d guisp=none
    pythonbuiltinfunc                      { fg="#f8fe7a", gui="bold", sp="none", bg="none", }, -- pythonbuiltinfunc xxx gui=bold guifg=#f8fe7a guibg=none guisp=none
    vimfunction                            { fg="#f8fe7a", gui="bold", sp="none", bg="none", }, -- vimfunction    xxx gui=bold guifg=#f8fe7a guibg=none guisp=none
    vimautoloadfunction                    { fg="#f3fe14", gui="bold", sp="none", bg="none", }, -- vimautoloadfunction xxx gui=bold guifg=#f3fe14 guibg=none guisp=none
    DevIconFsscript                        { fg="#519aba", }, -- DevIconFsscript xxx guifg=#519aba
    gitdiff                                { fg="#c7c7c7", sp="none", bg="none", }, -- gitdiff        xxx guifg=#c7c7c7 guibg=none guisp=none
    DevIconHpp                             { fg="#a074c4", }, -- DevIconHpp     xxx guifg=#a074c4
    diffremoved                            { fg="#cc6666", sp="none", bg="none", }, -- diffremoved    xxx guifg=#cc6666 guibg=none guisp=none
    diffadded                              { fg="#99cc99", sp="none", bg="none", }, -- diffadded      xxx guifg=#99cc99 guibg=none guisp=none
    signifysignadd                         { fg="#99cc99", sp="none", bg="none", }, -- signifysignadd xxx guifg=#99cc99 guibg=none guisp=none
    GitSignsAdd                            { signifysignadd }, -- GitSignsAdd    xxx links to signifysignadd
    signifysignchange                      { fg="#f8fe7a", sp="none", bg="none", }, -- signifysignchange xxx guifg=#f8fe7a guibg=none guisp=none
    GitSignsChange                         { signifysignchange }, -- GitSignsChange xxx links to signifysignchange
    signifysigndelete                      { fg="#cc6666", sp="none", bg="none", }, -- signifysigndelete xxx guifg=#cc6666 guibg=none guisp=none
    GitSignsDelete                         { signifysigndelete }, -- GitSignsDelete xxx links to signifysigndelete
    pythonself                             { fg="#c9b3cf", sp="none", bg="none", }, -- pythonself     xxx guifg=#c9b3cf guibg=none guisp=none
    DevIconLess                            { fg="#563d7c", }, -- DevIconLess    xxx guifg=#563d7c
    pythonselfarg                          { fg="#969896", gui="italic", sp="none", bg="none", }, -- pythonselfarg  xxx gui=italic guifg=#969896 guibg=none guisp=none
    pythonoperator                         { fg="#cc6666", sp="none", bg="none", }, -- pythonoperator xxx guifg=#cc6666 guibg=none guisp=none
    pythonnone                             { fg="#d98c8c", sp="none", bg="none", }, -- pythonnone     xxx guifg=#d98c8c guibg=none guisp=none
    pythonbytes                            { fg="#99cc99", gui="italic", sp="none", bg="none", }, -- pythonbytes    xxx gui=italic guifg=#99cc99 guibg=none guisp=none
    pythonrawbytes                         { fg="#99cc99", gui="italic", sp="none", bg="none", }, -- pythonrawbytes xxx gui=italic guifg=#99cc99 guibg=none guisp=none
    pythonbytescontent                     { fg="#99cc99", gui="italic", sp="none", bg="none", }, -- pythonbytescontent xxx gui=italic guifg=#99cc99 guibg=none guisp=none
    pythonbyteserror                       { fg="#d98c8c", gui="bold", sp="none", bg="none", }, -- pythonbyteserror xxx gui=bold guifg=#d98c8c guibg=none guisp=none
    pythonbytesescapeerror                 { fg="#d98c8c", gui="bold", sp="none", bg="none", }, -- pythonbytesescapeerror xxx gui=bold guifg=#d98c8c guibg=none guisp=none
    pythonbytesescape                      { fg="#aa92cd", gui="bold", sp="none", bg="none", }, -- pythonbytesescape xxx gui=bold guifg=#aa92cd guibg=none guisp=none
    vimnotfunc                             { fg="#81a2be", sp="none", bg="none", }, -- vimnotfunc     xxx guifg=#81a2be guibg=none guisp=none
    TSEmphasis                             { gui="italic", }, -- TSEmphasis     xxx gui=italic
    CmpItemKind                            { fg="#aa92cd", sp="none", bg="none", }, -- CmpItemKind    xxx guifg=#aa92cd guibg=none guisp=none
    CmpItemAbbr                            { fg="#b0b1b0", sp="none", bg="none", }, -- CmpItemAbbr    xxx guifg=#b0b1b0 guibg=none guisp=none
    TSNone                                 { fg="foreground", }, -- TSNone         xxx guifg=foreground
    TSText                                 { TSNone }, -- TSText         xxx links to TSNone
  }
end)
return theme

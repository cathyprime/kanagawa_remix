local lush = require("lush")
local hsl = lush.hsl

-- >>> 100 * 0.44
-- 44.0
-- >>> 100 * 0.44 * 0.1
-- 4.4
-- >>> 100 * 0.66
-- 66.0
-- >>> 100 * 0.66 * 0.9
-- 59.4
-- >>> 100 * 0.66 * 0.9 * 0.9
-- 53.46
-- >>> 100 * 1.1
-- 110.00000000000001
-- >>> 100 - 53.46
-- 46.54
-- >>> 100 * 1.1
-- 110.00000000000001
-- >>> 110 * 46.54
-- 5119.4
-- >>> 110 * 0.4654
-- 51.193999999999996
local MAGIC_NUMBER = 51.193999999999996 - 3

local palette = require("lush_theme.palette")

--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn    { bg = palette.sumiInk4 }, -- Columns set with 'colorcolumn'
    Conceal        { fg = palette.springViolet1, gui = "bold" }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         { fg = palette.sumiInk3, bg = palette.fujiWhite }, -- Character under the cursor
    CurSearch      { fg = palette.fujiWhite, bg = palette.waveBlue2 }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM       { Cursor }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorLine     { bg = palette.sumiInk5, fg = Normal.fg }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn   { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    Directory      { fg = palette.crystalBlue }, -- Directory names (and other special names in listings)
    DiffAdd        { fg = palette.autumnGreen }, -- Diff mode: Added line |diff.txt|
    DiffChange     { fg = palette.autumnYellow }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { fg = palette.autumnRed }, -- Diff mode: Deleted line |diff.txt|
    DiffAdded      { DiffAdd }, -- Diff mode: Added line |diff.txt|
    DiffChanged    { DiffChange }, -- Diff mode: Changed line |diff.txt|
    DiffDeleted    { DiffDelete }, -- Diff mode: Deleted line |diff.txt|
    DiffRemoved    { DiffDelete }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { bg = palette.winterYellow }, -- Diff mode: Changed text within a changed line |diff.txt|
    TermCursor     { gui = "reverse" }, -- Cursor in a focused terminal
    TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg       { fg = palette.samuraiRed }, -- Error messages on the command line
    VertSplit      { fg = palette.winterBlue, bg = palette.winterBlue }, -- Column separating vertically split windows
    Folded         { }, -- Line used for closed folds
    FoldColumn     { fg = palette.sumiInk6 }, -- 'foldcolumn'
    SignColumn     { fg = palette.springViolet1 }, -- Column where |signs| are displayed
    IncSearch      { fg = palette.waveBlue1, bg = palette.roninYellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute     { fg = palette.fujiWhite, bg = palette.autumnRed }, -- |:substitute| replacement text highlighting
    LineNr         { fg = palette.sumiInk6 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove    { LineNr }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrBelow    { LineNr }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr   { fg = palette.roninYellow, gui = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    CursorLineFold { FoldColumn }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    CursorLineSign { SignColumn }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen     { fg = palette.roninYellow, gui = "bold" }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg        { fg = palette.roninYellow, gui = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea        { fg = palette.oldWhite }, -- Area for messages and cmdline
    MsgSeparator   { bg = palette.sumiInk0 }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg        { fg = palette.dragonBlue }, -- |more-prompt|
    NonText        { fg = palette.sumiInk6 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { fg = palette.fujiWhite, bg = palette.sumiInk1 }, -- Normal text
    EndOfBuffer    { Normal, fg = palette.sumiInk6 }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    NormalFloat    { fg = palette.oldWhite, bg = palette.sumiInk0 }, -- Normal text in floating windows.
    FloatBorder    { fg = palette.sumiInk6, bg = palette.sumiInk0 }, -- Border of floating windows.
    FloatTitle     { fg = palette.springViolet1, bg = palette.sumiInk0, gui = "bold" }, -- Title of floating windows.
    FloatFooter    { FloatTitle }, -- Footer of floating windows.
    NormalNC       { Normal }, -- normal text in non-current windows
    Pmenu          { fg = Normal.fg, bg = palette.sumiInk4 }, -- Popup menu: Normal item.
    PmenuSel       { bg = palette.sumiInk5 }, -- Popup menu: Selected item.
    PmenuKind      { fg = palette.oldWhite, bg = palette.waveBlue1 }, -- Popup menu: Normal item "kind"
    PmenuKindSel   { fg = palette.oldWhite, bg = palette.waveBlue2 }, -- Popup menu: Selected item "kind"
    PmenuExtra     { fg = palette.springViolet1, bg = palette.waveBlue1 }, -- Popup menu: Normal item "extra text"
    PmenuExtraSel  { fg = palette.springViolet1, bg = palette.waveBlue2 }, -- Popup menu: Selected item "extra text"
    PmenuSbar      { bg = palette.sumiInk2 }, -- Popup menu: Scrollbar.
    PmenuThumb     { bg = palette.sumiInk5 }, -- Popup menu: Thumb of the scrollbar.
    Question       { MoreMsg }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine   { bg = palette.sumiInk4}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search         { fg = palette.fujiWhite, bg = palette.waveBlue2  }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey     { fg = palette.springViolet1 }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad       { sp = palette.samuraiRed, gui = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap       { sp = palette.roninYellow, gui = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal     { sp = palette.roninYellow, gui = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare      { sp = palette.roninYellow, gui = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     { fg = palette.oldWhite, bg = palette.sumiInk0 }, -- Status line of current window
    StatusLineNC   { fg = palette.sumiInk6, bg = palette.sumiInk0 }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine        { fg = palette.springViolet1, bg = palette.sumiInk0 }, -- Tab pages line, not active tab page label
    TabLineFill    { bg = palette.sumiInk3 }, -- Tab pages line, where there are no labels
    TabLineSel     { fg = palette.oldWhite, bg = palette.sumiInk4}, -- Tab pages line, active tab page label
    Title          { fg = palette.crystalBlue, gui = "bold" }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         { bg = palette.waveBlue1 }, -- Visual mode selection
    VisualNOS      { Visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg = palette.roninYellow }, -- Warning messages
    Whitespace     { fg = palette.sumiInk5 }, -- "nbsp", "space", "tab" or "trail" in 'listchars'
    WinSeparator   { VertSplit }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu       { Pmenu }, -- Current match in 'wildmenu' completion
    WinBar         { fg = palette.oldWhite }, -- Window bar of current window
    WinBarNC       { fg = palette.oldWhite }, -- Window bar of not-current windows
    DiffIncoming   { fg = DiffAdd.fg, bg = DiffText.bg.da(40) },
    DiffCurrent    { fg = DiffChange.fg, bg = DiffText.bg.da(40) },

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = palette.dragonOrange.da(20).sa(30), gui = "italic" }, -- Any comment

    Constant       { fg = palette.surimiOrange, gui = "bold" }, -- (*) Any constant
    String         { fg = palette.springGreen, gui = "italic" }, --   A string constant: "this is a string"
    Character      { String, gui = ""}, --   A character constant: 'c', '\n'
    Number         { fg = palette.sakuraPink }, --   A number constant: 234, 0xff
    Boolean        { fg = palette.surimiOrange }, --   A boolean constant: TRUE, false
    Float          { Number }, --   A floating point constant: 2.3e10

    Identifier     { fg = Normal.fg }, -- (*) Any variable name
    Property       { fg = palette.carpYellow },
    Function       { fg = palette.crystalBlue }, --   Function name (also: methods for classes)

    Keyword        { fg = palette.oniViolet, gui = "italic" }, --   any other keyword
    Statement      { Keyword }, -- (*) Any statement
    Conditional    { Keyword }, --   if, then, else, endif, switch, etc.
    Repeat         { Keyword }, --   for, do, while, etc.
    Label          { Keyword }, --   case, default, etc.
    Operator       { fg = palette.boatYellow2 }, --   "sizeof", "+", "*", etc.
    Exception      { fg = palette.waveRed }, --   try, catch, throw

    PreProc        { fg = palette.waveRed }, -- (*) Generic Preprocessor
    Include        { PreProc }, --   Preprocessor #include
    Define         { PreProc }, --   Preprocessor #define
    Macro          { PreProc }, --   Same as Define
    PreCondit      { PreProc }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = palette.waveAqua2, gui = "nocombine" }, -- (*) int, long, char, etc.
    StorageClass   { Type }, --   static, register, volatile, etc.
    Structure      { Type }, --   struct, union, enum, etc.
    Typedef        { Type }, --   A typedef

    Special        { fg = palette.springBlue }, -- (*) Any special symbol
    SpecialChar    { Special }, --   Special character in a constant
    Tag            { Special }, --   You can use CTRL-] on this
    Delimiter      { fg = palette.springViolet2 }, --   Character that needs attention
    SpecialComment { Special }, --   Special things inside a comment (e.g. '\n')
    Debug          { Special }, --   Debugging statements

    Underlined     { fg = palette.springBlue, gui = "underline" }, -- Text that stands out, HTML links
    Ignore         { NonText }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { fg = palette.samuraiRed }, -- Any erroneous construct
    Todo           { fg = palette.waveBlue1, bg = palette.dragonBlue, gui = "bold"  }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    LspReferenceText            { bg = palette.winterYellow }, -- Used for highlighting "text" references
    LspReferenceRead            { LspReferenceText }, -- Used for highlighting "read" references
    LspReferenceWrite           { LspReferenceText, gui = "underline" }, -- Used for highlighting "write" references
    LspCodeLens                 { fg = palette.fujiGray }, -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    LspCodeLensSeparator        { LspCodeLens }, -- Used to color the seperator between two or more code lens.
    LspSignatureActiveParameter { fg = palette.roninYellow }, -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = palette.samuraiRed }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = palette.roninYellow }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = palette.dragonBlue }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = palette.waveAqua1 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = palette.springGreen }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { DiagnosticError }, -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn  { DiagnosticWarn }, -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo  { DiagnosticInfo }, -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint  { DiagnosticHint }, -- Used for "Hint" diagnostic virtual text.
    DiagnosticVirtualTextOk    { DiagnosticOk }, -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError   { sp = DiagnosticError.fg, gui = "undercurl" }, -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { sp = DiagnosticWarn.fg, gui = "undercurl" }, -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { sp = DiagnosticInfo.fg, gui = "undercurl" }, -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { sp = DiagnosticHint.fg, gui = "undercurl" }, -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk      { sp = DiagnosticOk.fg, gui = "undercurl" }, -- Used to underline "Ok" diagnostics.
    DiagnosticFloatingError    { DiagnosticError }, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn     { DiagnosticWarn }, -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo     { DiagnosticInfo }, -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint     { DiagnosticHint }, -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticFloatingOk       { DiagnosticOk }, -- Used to color "Ok" diagnostic messages in diagnostics float.
    DiagnosticSignError        { DiagnosticError }, -- Used for "Error" signs in sign column.
    DiagnosticSignWarn         { DiagnosticWarn }, -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo         { DiagnosticInfo }, -- Used for "Info" signs in sign column.
    DiagnosticSignHint         { DiagnosticHint }, -- Used for "Hint" signs in sign column.
    DiagnosticSignOk           { DiagnosticOk }, -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    sym"@text.literal"                      { String }, -- String
    sym"@text.reference"                    { Identifier }, -- Identifier
    sym"@text.title"                        { Title }, -- Title
    sym"@text.uri"                          { Underlined }, -- Underlined
    sym"@text.underline"                    { Underlined }, -- Underlined
    sym"@text.todo"                         { Todo }, -- Todo
    sym"@comment"                           { Comment }, -- Comment
    sym"@punctuation"                       { Delimiter }, -- Delimiter
    sym"@constant"                          { Constant }, -- Constant
    sym"@constant.builtin"                  { Constant, gui = "italic bold" }, -- Special
    sym"@constant.macro"                    { Define }, -- Define
    sym"@define"                            { Define }, -- Define
    sym"@macro"                             { Macro }, -- Macro
    sym"@string"                            { String }, -- String
    sym"@string.regexp"                     { Operator }, -- String
    sym"@string.escape"                     { Operator }, -- String
    sym"@string.special"                    { SpecialChar }, -- SpecialChar
    sym"@character"                         { Character }, -- Character
    sym"@character.special"                 { SpecialChar }, -- SpecialChar
    sym"@number"                            { Number }, -- Number
    sym"@boolean"                           { Boolean }, -- Boolean
    sym"@float"                             { Float }, -- Float
    sym"@function"                          { Function }, -- Function,
    sym"@method"                            { Function }, -- Function
    sym"@function.call.lua"                 { Function }, -- Function,
    sym"@function.builtin"                  { Function, gui = "italic" }, -- Special
    sym"@function.macro"                    { Macro }, -- Macro
    sym"@parameter"                         { Identifier }, -- Identifier
    sym"@field"                             { Property }, -- Property
    sym"@property"                          { Property }, -- Property
    sym"@constructor"                       { Function, gui = "italic" }, -- Special
    sym"@conditional"                       { Conditional }, -- Conditional
    sym"@repeat"                            { Repeat }, -- Repeat
    sym"@label"                             { Label }, -- Label
    sym"@keyword"                           { Keyword }, -- Keyword
    sym"@keyword.conditional"               { Conditional }, -- Conditional
    sym"@keyword.repeat"                    { Repeat }, -- Repeat
    sym"@keyword.label"                     { Label }, -- Label
    sym"@keyword.return"                    { fg = PreProc.fg.da(10), gui = "italic" }, -- Keyword
    sym"@keyword.import"                    { PreProc, gui = "italic" }, -- Keyword
    sym"@namespace"                         { Identifier, gui = "italic" }, -- Identifier
    sym"@module"                            { sym"@namespace" }, -- Tag
    sym"@operator"                          { Operator }, -- Operator
    sym"@keyword.operator"                  { Operator }, -- Keyword
    sym"@exception"                         { Exception }, -- Exception
    sym"@variable"                          { Identifier }, -- Identifier
    sym"@variable.parameter"                { sym"@parameter" }, -- Identifier
    sym"@variable.builtin"                  { sym"@keyword", gui = "italic" },
    sym"@variable.member"                   { Property },
    sym"@type"                              { Type }, -- Type
    sym"@type.builtin"                      { Type, gui = "italic" }, -- Type
    sym"@type.definition"                   { Typedef }, -- Typedef
    sym"@storageclass"                      { StorageClass }, -- StorageClass
    sym"@structure"                         { Structure }, -- Structure
    sym"@include"                           { Include }, -- Include
    sym"@preproc"                           { PreProc }, -- PreProc
    sym"@debug"                             { Debug }, -- Debug
    sym"@tag"                               { Tag }, -- Tag
    sym"@constructor.lua"                   { Keyword },
    sym"@markup.link.url.markdown_inline"   { }, -- (url)
    sym"@markup.link.label.markdown_inline" { Property }, -- [label]
    sym"@markup.italic.markdown_inline"     { Exception }, -- *italic*
    sym"@markup.raw.markdown_inline"        { String }, -- `code`
    sym"@markup.list.markdown"              { Function }, -- + list
    sym"@markup.heading.gitcommit"          { Title, gui = "" }, -- + list
    sym"@comment.gitcommit"                 { fg = palette.fujiGray, gui = "italic" },

    -- LSP Tokens
    sym"@lsp.type.parameter"                    { sym"@variable.parameter" },
    sym"@lsp.type.namespace"                    { sym"@namespace" },
    sym"@lsp.type.keyword"                      { },
    sym"@lsp.type.variable"                     { },
    sym"@lsp.type.variable.lua"                 { sym"@lsp.type.variable" },
    sym"@lsp.mod.readonly"                      { Constant },
    sym"@lsp.typemod.variable.global"           { Constant },
    sym"@lsp.typemod.keyword.documentation.lua" { Special },

    -- Plugins
    -- Gitsigns
    GitSignsAdd    { DiffAdded },
    GitSignsChange { DiffChanged },
    GitSignsDelete { DiffDeleted },

    NeogitDiffContextHighlight { Normal },
    NeogitHunkHeader           { Function },
    NeogitHunkHeaderHighlight  { Delimiter, gui = "bold" },
    NeogitDiffAdd              { DiffAdded, bg = DiffAdded.fg.da(60) },
    NeogitDiffAddHighlight     { DiffAdded, bg = DiffAdded.fg.da(60) },
    NeogitDiffDelete           { DiffDeleted, bg = DiffDeleted.fg.da(60) },
    NeogitDiffDeleteHighlight  { DiffDeleted, bg = DiffDeleted.fg.da(60) },
    NeogitCommitViewHeader     { DiffText },
    NeogitHunkHeaderCursor     { NeogitHunkHeaderHighlight },
    NeogitSubtleText           { fg = palette.fujiGray, gui = "italic" },

    -- MiniDiff
    MiniDiffSignAdd     { DiffAdd },
    MiniDiffSignChange  { DiffChange },
    MiniDiffOverAdd     { bg = palette.winterGreen },
    MiniDiffSignDelete  { DiffDelete },
    MiniDiffOverChange  { bg = palette.winterYellow },
    MiniDiffOverContext { bg = palette.winterBlue },
    MiniDiffOverDelete  { bg = palette.winterRed },

    -- Mini Hipatterns
    MiniHipatternsFixme { fg = Normal.bg, bg = DiagnosticError.fg, gui = "bold" },
    MiniHipatternsHack  { fg = Normal.bg, bg = DiagnosticWarn.fg, gui = "bold" },
    MiniHipatternsNote  { fg = Normal.bg, bg = DiagnosticInfo.fg, gui = "bold" },
    MiniHipatternsTodo  { fg = Normal.bg, bg = DiagnosticHint.fg, gui = "bold" },

    -- MiniClue
    MiniClueBorder              { FloatBorder },
    MiniClueDescGroup           { DiagnosticFloatingWarn },
    MiniClueDescSingle          { NormalFloat },
    MiniClueNextKey             { DiagnosticFloatingHint },
    MiniClueNextKeyWithPostkeys { DiagnosticFloatingError },
    MiniClueSeparator           { DiagnosticFloatingInfo },
    MiniClueTitle               { FloatTitle },

    -- MiniIndentscope
    MiniIndentscopeSymbol { Special },
    MiniIndentscopePrefix { gui = "nocombine" },

    -- MiniOperators
    MiniOperatorsExchangeFrom { IncSearch },

    -- MiniNotify
    MiniNotifyBorder { FloatBorder, bg = Normal.bg },
    MiniNotifyNormal { NormalFloat, bg = Normal.bg },
    MiniNotifyTitle  { FloatTitle, bg = Normal.bg },

    -- MiniSurround
    MiniSurround { IncSearch },

    -- MiniStatusline
    StatuslineBInsert             { fg = palette.springGreen, bg = palette.winterBlue, gui = "bold" },
    StatuslineBNormal             { StatuslineBInsert, fg = palette.crystalBlue },
    StatuslineBNormalInactive     { StatuslineBInsert, fg = palette.crystalBlue },
    StatuslineBVisual             { StatuslineBInsert, fg = palette.oniViolet },
    StatuslineBCommand            { StatuslineBInsert, fg = palette.boatYellow2 },
    StatuslineBReplace            { StatuslineBInsert, fg = palette.surimiOrange },
    StatuslineInsert              { fg = palette.sumiInk3, bg = palette.springGreen },
    StatuslineNormal              { fg = palette.sumiInk0, bg = palette.crystalBlue },
    StatuslineNormalInactive      { fg = palette.oldWhite, bg = palette.crystalBlue },
    StatuslineVisual              { fg = palette.sumiInk3, bg = palette.oniViolet },
    StatuslineCommand             { fg = palette.sumiInk3, bg = palette.boatYellow2 },
    StatuslineReplace             { fg = palette.sumiInk3, bg = palette.surimiOrange },
    MiniStatuslineModeNormal      { fg = palette.oldWhite, bg = palette.purp },
    MiniStatuslineModeVisual      { fg = palette.sumiInk1, bg = palette.autumnGreen },
    MiniStatuslineModeVisualLine  { fg = palette.oldWhite, bg = palette.lotusOrange },
    MiniStatuslineModeVisualBlock { fg = palette.crystalBlue, bg = palette.sumiInk1 },
    MiniStatuslineModeSelect      { fg = palette.lotusBlue4, bg = palette.crystalBlue },
    MiniStatuslineModeInsert      { fg = palette.sumiInk1, bg = palette.crystalBlue },
    MiniStatuslineModeReplace     { fg = palette.sumiInk1, bg = palette.lotusRed3 },
    MiniStatuslineModeCommand     { fg = palette.sumiInk1, bg = palette.surimiOrange },
    MiniStatuslineModeOther       { fg = palette.oldWhite, bg = palette.lotusBlue5 },
    MiniStatuslineModeTerminal    { fg = palette.carpYellow, bg = palette.sumiInk1 },
    statuslineRegister            { fg = palette.sumiInk0, bg = palette.crystalBlue },
    statuslineRegisterRecording   { fg = palette.lotusCyan, bg = palette.lotusRed3 },
    MiniStatuslineDevinfo         { fg = palette.crystalBlue, bg = palette.springGreen },
    MiniStatuslineBrackets        { fg = palette.autumnYellow, bg = StatuslineBInsert.bg },
    MiniStatuslineDevinfoB        { fg = palette.fujiWhite, bg = CursorLine.bg },
    StatusDiffAdded               { DiffAdded, bg = palette.sumiInk4 },
    StatusDiffChanged             { DiffChanged, bg = palette.sumiInk4 },
    StatusDiffDeleted             { DiffDeleted, bg = palette.sumiInk4 },
    StatusDiagnosticSignError     { DiagnosticError, bg = StatuslineBInsert.bg },
    StatusDiagnosticSignWarn      { DiagnosticWarn, bg = StatuslineBInsert.bg },
    StatusDiagnosticSignInfo      { DiagnosticInfo, bg = StatuslineBInsert.bg },
    StatusDiagnosticSignHint      { DiagnosticHint, bg = StatuslineBInsert.bg },

    -- MiniTrailspace
    MiniTrailspace { fg = palette.peachRed, bg = palette.peachRed },

    -- Telescope Extensions
    TreesitterContext           { Folded },
    TreesitterContextLineNumber { fg = SpecialKey.fg },

    -- Telescope
    TelescopeBorder          { fg = palette.sumiInk4, bg = Normal.bg },
    TelescopePromptBorder    { TelescopeBorder, bg = palette.none },
    TelescopeResultsBorder   { fg = palette.sumiInk2 },
    TelescopeResultsNormal   { fg = palette.oldWhite },
    TelescopePreviewBorder   { fg = palette.sumiInk1 },
    TelescopeTitle           { Title },
    TelescopeSelection       { CursorLine },
    TelescopeSelectionCaret  { CursorLineNr },
    TelescopeResultsClass    { Structure },
    TelescopeResultsStruct   { Structure },
    TelescopeResultsField    { sym"@field" },
    TelescopeResultsMethod   { Function },
    TelescopeResultsVariable { sym"@variable" },

    CmpDocumentation       { NormalFloat },
    CmpDocumentationBorder { FloatBorder },
    CmpCompletion          { Pmenu },
    CmpCompletionSel       { bg = PmenuSel.bg },
    CmpCompletionBorder    { fg = Search.bg, bg = Pmenu.bg },
    CmpCompletionThumb     { PmenuThumb },
    CmpCompletionSbar      { PmenuSbar },
    CmpItemAbbr            { fg = Pmenu.fg },
    CmpItemAbbrDeprecated  { fg = Comment.fg, gui = "strikethrough" },
    CmpItemAbbrMatch       { fg = Function.fg },
    CmpItemAbbrMatchFuzzy  { CmpItemAbbrMatch },
    CmpItemKindDefault     { MsgArea },
    CmpItemMenu            { MsgArea },

    CmpItemKindText          { fg = Normal.fg.da(10),                bg = Normal.fg.da(MAGIC_NUMBER),                gui = "standout" },
    CmpItemKindMethod        { fg = sym"@method".fg.da(10),          bg = sym"@method".fg.da(MAGIC_NUMBER),          gui = "standout" },
    CmpItemKindFunction      { fg = Function.fg.da(10),              bg = Function.fg.da(MAGIC_NUMBER),              gui = "standout" },
    CmpItemKindConstructor   { fg = sym"@constructor".fg.da(10),     bg = sym"@constructor".fg.da(MAGIC_NUMBER),     gui = "standout" },
    CmpItemKindField         { fg = sym"@variable.member".fg.da(10), bg = sym"@variable.member".fg.da(MAGIC_NUMBER), gui = "standout" },
    CmpItemKindVariable      { fg = MsgArea.fg.da(10),               bg = MsgArea.fg.da(MAGIC_NUMBER),               gui = "standout" },
    CmpItemKindClass         { fg = Type.fg.da(10),                  bg = Type.fg.da(MAGIC_NUMBER),                  gui = "standout" },
    CmpItemKindInterface     { fg = Type.fg.da(10),                  bg = Type.fg.da(MAGIC_NUMBER),                  gui = "standout" },
    CmpItemKindModule        { fg = sym"@module".fg.da(10),          bg = sym"@module".fg.da(MAGIC_NUMBER),          gui = "standout" },
    CmpItemKindProperty      { fg = sym"@property".fg.da(10),        bg = sym"@property".fg.da(MAGIC_NUMBER),        gui = "standout" },
    CmpItemKindUnit          { fg = Number.fg.da(10),                bg = Number.fg.da(MAGIC_NUMBER),                gui = "standout" },
    CmpItemKindValue         { fg = String.fg.da(10),                bg = String.fg.da(MAGIC_NUMBER),                gui = "standout" },
    CmpItemKindEnum          { fg = Type.fg.da(10),                  bg = Type.fg.da(MAGIC_NUMBER),                  gui = "standout" },
    CmpItemKindKeyword       { fg = Keyword.fg.da(10),               bg = Keyword.fg.da(MAGIC_NUMBER),               gui = "standout" },
    CmpItemKindSnippet       { fg = Special.fg.da(10),               bg = Special.fg.da(MAGIC_NUMBER),               gui = "standout" },
    CmpItemKindColor         { fg = Special.fg.da(10),               bg = Special.fg.da(MAGIC_NUMBER),               gui = "standout" },
    CmpItemKindFile          { fg = Directory.fg.da(10),             bg = Directory.fg.da(MAGIC_NUMBER),             gui = "standout" },
    CmpItemKindReference     { fg = Special.fg.da(10),               bg = Special.fg.da(MAGIC_NUMBER),               gui = "standout" },
    CmpItemKindFolder        { fg = Directory.fg.da(10),             bg = Directory.fg.da(MAGIC_NUMBER),             gui = "standout" },
    CmpItemKindEnumMember    { fg = Constant.fg.da(10),              bg = Constant.fg.da(MAGIC_NUMBER),              gui = "standout" },
    CmpItemKindConstant      { fg = Constant.fg.da(10),              bg = Constant.fg.da(MAGIC_NUMBER),              gui = "standout" },
    CmpItemKindStruct        { fg = Type.fg.da(10),                  bg = Type.fg.da(MAGIC_NUMBER),                  gui = "standout" },
    CmpItemKindEvent         { fg = Type.fg.da(10),                  bg = Type.fg.da(MAGIC_NUMBER),                  gui = "standout" },
    CmpItemKindOperator      { fg = Operator.fg.da(10),              bg = Operator.fg.da(MAGIC_NUMBER),              gui = "standout" },
    CmpItemKindTypeParameter { fg = Type.fg.da(10),                  bg = Type.fg.da(MAGIC_NUMBER),                  gui = "standout" },
    CmpItemKindCopilot       { fg = String.fg.da(10),                bg = String.fg.da(MAGIC_NUMBER),                gui = "standout" },

    -- DapUI
    DapUIScope                   { Special },
    DapUIType                    { Type },
    DapUIModifiedValue           { Special, gui = "bold" },
    DapUIDecoration              { fg = FloatBorder.fg },
    DapUIThread                  { Identifier },
    DapUIStoppedThread           { Special },
    DapUISource                  { Special },
    DapUILineNumber              { Special },
    DapUIFloatBorder             { Special },
    DapUIWatchesEmpty            { DiagnosticError },
    DapUIWatchesValue            { Identifier },
    DapUIWatchesError            { DiagnosticError },
    DapUIBreakpointsPath         { Directory },
    DapUIBreakpointsInfo         { DiagnosticInfo },
    DapUIBreakpointsCurrentLine  { Identifier, gui = "bold" },
    DapUIBreakpointsDisabledLine { Comment },
    DapUIStepOver                { Special },
    DapUIStepInto                { Special },
    DapUIStepBack                { Special },
    DapUIStepOut                 { Special },
    DapUIStop                    { DiagnosticError },
    DapUIPlayPause               { String },
    DapUIRestart                 { String },
    DapUIUnavailable             { Comment },

    -- Hydra
    HydraRed      { fg = "#FF5733" },
    HydraBlue     { fg = "#5EBCF6" },
    HydraAmaranth { fg = "#ff1757" },
    HydraTeal     { fg = "#00a1a1" },
    HydraPink     { fg = "#ff55de" },
    HydraHint     { NormalFloat },
    HydraBorder   { FloatBorder },
    HydraTitle    { FloatTitle },
    HydraFooter   { FloatFooter },

    -- checkhealth
    healthError   { DiagnosticError },
    healthSuccess { DiagnosticOk },
    healthWarning { DiagnosticWarn },

    -- Misc
    PortalOrange { fg = "#fd6600" },
    PortalBlue   { fg = "#0078ff" },
    Yank         { fg = palette.oldWhite, bg = palette.purp}
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap

local palette = {

    whitespace = "#1e1e28",

    -- Bg Shades
    sumiInk0 = "#16161D",
    sumiInk1 = "#181820",
    sumiInk2 = "#1a1a22",
    sumiInk3 = "#1F1F28",
    sumiInk4 = "#2A2A37",
    sumiInk5 = "#363646",
    sumiInk6 = "#54546D", --fg

    -- Popup and Floats
    waveBlue1 = "#223249",
    waveBlue2 = "#2D4F67",

    -- Diff and Git
    winterGreen = "#2B3328",
    winterYellow = "#49443C",
    winterRed = "#43242B",
    winterBlue = "#252535",
    autumnGreen = "#76946A",
    autumnRed = "#C34043",
    autumnYellow = "#DCA561",

    -- Diag
    samuraiRed = "#E82424",
    roninYellow = "#FF9E3B",
    waveAqua1 = "#6A9589",
    dragonBlue = "#658594",

    -- Fg and Comments
    oldWhite = "#C8C093",
    fujiWhite = "#DCD7BA",
    fujiGray = "#727169",

    oniViolet = "#957FB8",
    oniViolet2 = "#b8b4d0",
    crystalBlue = "#7E9CD8",
    springViolet1 = "#938AA9",
    springViolet2 = "#9CABCA",
    springBlue = "#7FB4CA",
    lightBlue = "#A3D4D5",
    waveAqua2 = "#7AA89F",

    springGreen = "#98BB6C",
    boatYellow1 = "#938056",
    boatYellow2 = "#C0A36E",
    carpYellow = "#E6C384",

    sakuraPink = "#D27E99",
    waveRed = "#E46876",
    peachRed = "#FF5D62",
    surimiOrange = "#FFA066",
    katanaGray = "#717C7C",

    dragonBlack0 = "#0d0c0c",
    dragonBlack1 = "#12120f",
    dragonBlack2 = "#1D1C19",
    dragonBlack3 = "#181616",
    dragonBlack4 = "#282727",
    dragonBlack5 = "#393836",
    dragonBlack6 = "#625e5a",

    dragonWhite = "#c5c9c5",
    dragonGreen = "#87a987",
    dragonGreen2 = "#8a9a7b",
    dragonPink = "#a292a3",
    dragonOrange = "#b6927b",
    dragonOrange2 = "#b98d7b",
    dragonGray = "#a6a69c",
    dragonGray2 = "#9e9b93",
    dragonGray3 = "#7a8382",
    dragonBlue2 = "#8ba4b0",
    dragonViolet= "#8992a7",
    dragonRed = "#c4746e",
    dragonAqua = "#8ea4a2",
    dragonAsh = "#737c73",
    dragonTeal = "#949fb5",
    dragonYellow = "#c4b28a",--"#a99c8b",
    -- "#8a9aa3",

    lotusInk1 = "#545464",
    lotusInk2 = "#43436c",
    lotusGray = "#dcd7ba",
    lotusGray2 = "#716e61",
    lotusGray3 = "#8a8980",
    lotusWhite0 = "#d5cea3",
    lotusWhite1 = "#dcd5ac",
    lotusWhite2 = "#e5ddb0",
    lotusWhite3 = "#f2ecbc",
    lotusWhite4 = "#e7dba0",
    lotusWhite5 = "#e4d794",
    lotusViolet1 = "#a09cac",
    lotusViolet2 = "#766b90",
    lotusViolet3 = "#c9cbd1",
    lotusViolet4 = "#624c83",
    lotusBlue1 = "#c7d7e0",
    lotusBlue2 = "#b5cbd2",
    lotusBlue3 = "#9fb5c9",
    lotusBlue4 = "#4d699b",
    lotusBlue5 = "#5d57a3",
    lotusGreen = "#6f894e",
    lotusGreen2 = "#6e915f",
    lotusGreen3 = "#b7d0ae",
    lotusPink = "#b35b79",
    lotusOrange = "#cc6d00",
    lotusOrange2 = "#e98a00",
    lotusYellow ="#77713f",
    lotusYellow2 = "#836f4a",
    lotusYellow3 = "#de9800",
    lotusYellow4 = "#f9d791",
    lotusRed = "#c84053",
    lotusRed2 = "#d7474b",
    lotusRed3 = "#e82424",
    lotusRed4 = "#d9a594",
    lotusAqua = "#597b75",
    lotusAqua2 = "#5e857a",
    lotusTeal1 = "#4e8ca2",
    lotusTeal2 = "#6693bf",
    lotusTeal3 = "#5a7785",
    lotusCyan = "#d7e3d8",
}

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

local lush = require('lush')
local hsl = lush.hsl

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
    CursorLine     { bg = palette.sumiInk5 }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorColumn   { CursorLine }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    Directory      { fg = palette.crystalBlue }, -- Directory names (and other special names in listings)
    -- autumnGreen = "#76946A",
    -- autumnRed = "#C34043",
    -- autumnYellow = "#DCA561",
    DiffAdd        { bg = palette.autumnGreen }, -- Diff mode: Added line |diff.txt|
    DiffChange     { bg = palette.autumnYellow }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { bg = palette.autumnRed }, -- Diff mode: Deleted line |diff.txt|
    DiffAdded      { fg = palette.autumnGreen }, -- Diff mode: Added line |diff.txt|
    DiffChanged    { fg = palette.autumnYellow }, -- Diff mode: Changed line |diff.txt|
    DiffDeleted    { fg = palette.autumnRed }, -- Diff mode: Deleted line |diff.txt|
    DiffRemoved    { fg = palette.autumnRed }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { bg = palette.winterYellow }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer    { fg = palette.sumiInk3 }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor     { gui = "reverse" }, -- Cursor in a focused terminal
    TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg       { fg = palette.samuraiRed }, -- Error messages on the command line
    VertSplit      { fg = palette.sumiInk0 }, -- Column separating vertically split windows
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
    Normal         { fg = palette.fujiWhite, bg = palette.sumiInk3 }, -- Normal text
    NormalFloat    { fg = palette.oldWhite, bg = palette.sumiInk0 }, -- Normal text in floating windows.
    FloatBorder    { fg = palette.sumiInk6, bg = palette.sumiInk0 }, -- Border of floating windows.
    FloatTitle     { fg = palette.springViolet1, bg = palette.sumiInk0, gui = "bold" }, -- Title of floating windows.
    NormalNC       { Normal }, -- normal text in non-current windows
    Pmenu          { fg = palette.fujiWhite, bg = palette.sumiInk4 }, -- Popup menu: Normal item.
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
    Whitespace     { fg = palette.whitespace }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WinSeparator   { fg = palette.winterBlue, bg = palette.winterBlue }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu       { Pmenu }, -- Current match in 'wildmenu' completion
    WinBar         { fg = palette.oldWhite }, -- Window bar of current window
    WinBarNC       { fg = palette.oldWhite }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = palette.fujiGray, gui = "italic" }, -- Any comment

    Constant       { fg = palette.surimiOrange }, -- (*) Any constant
    String         { fg = palette.springGreen }, --   A string constant: "this is a string"
    Character      { String }, --   A character constant: 'c', '\n'
    Number         { fg = palette.sakuraPink }, --   A number constant: 234, 0xff
    Boolean        { fg = palette.surimiOrange, gui = "bold"  }, --   A boolean constant: TRUE, false
    Float          { Number }, --   A floating point constant: 2.3e10

    Identifier     { fg = palette.carpYellow }, -- (*) Any variable name
    Function       { fg = palette.crystalBlue }, --   Function name (also: methods for classes)

    Statement      { fg = palette.oniViolet, gui = "bold" }, -- (*) Any statement
    Conditional    { Statement }, --   if, then, else, endif, switch, etc.
    Repeat         { Statement }, --   for, do, while, etc.
    Label          { Statement }, --   case, default, etc.
    Operator       { fg = palette.boatYellow2 }, --   "sizeof", "+", "*", etc.
    Keyword        { fg = palette.oniViolet, gui = "italic" }, --   any other keyword
    Exception      { fg = palette.waveRed }, --   try, catch, throw

    PreProc        { fg = palette.waveRed }, -- (*) Generic Preprocessor
    Include        { PreProc }, --   Preprocessor #include
    Define         { PreProc }, --   Preprocessor #define
    Macro          { PreProc }, --   Same as Define
    PreCondit      { PreProc }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = palette.waveAqua2 }, -- (*) int, long, char, etc.
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
    LspReferenceText            { bg = palette.winterYellow } , -- Used for highlighting "text" references
    LspReferenceRead            { LspReferenceText } , -- Used for highlighting "read" references
    LspReferenceWrite           { LspReferenceText, gui = "underline" } , -- Used for highlighting "write" references
    LspCodeLens                 { fg = palette.fujiGray } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    LspCodeLensSeparator        { LspCodeLens } , -- Used to color the seperator between two or more code lens.
    LspSignatureActiveParameter { fg = palette.roninYellow } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = palette.samuraiRed } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = palette.roninYellow } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = palette.dragonBlue } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = palette.waveAqua1 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = palette.springGreen } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { DiagnosticError } , -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn  { DiagnosticWarn } , -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo  { DiagnosticInfo } , -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint  { DiagnosticHint } , -- Used for "Hint" diagnostic virtual text.
    DiagnosticVirtualTextOk    { DiagnosticOk } , -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError   { DiagnosticError, gui = "underline" } , -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { DiagnosticWarn, gui = "underline" } , -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { DiagnosticInfo, gui = "underline" } , -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { DiagnosticHint, gui = "underline" } , -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk      { DiagnosticOk, gui = "underline" } , -- Used to underline "Ok" diagnostics.
    DiagnosticFloatingError    { fg = DiagnosticError.fg } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn     { fg = DiagnosticWarn.fg } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo     { fg = DiagnosticInfo.fg } , -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint     { fg = DiagnosticHint.fg } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticFloatingOk       { fg = DiagnosticOk.fg } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    DiagnosticSignError        { fg = DiagnosticError.fg } , -- Used for "Error" signs in sign column.
    DiagnosticSignWarn         { fg = DiagnosticWarn.fg } , -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo         { fg = DiagnosticInfo.fg } , -- Used for "Info" signs in sign column.
    DiagnosticSignHint         { fg = DiagnosticHint.fg } , -- Used for "Hint" signs in sign column.
    DiagnosticSignOk           { fg = DiagnosticOk.fg } , -- Used for "Ok" signs in sign column.

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

    sym"@text.literal"       { Comment }, -- Comment
    sym"@text.reference"     { Identifier }, -- Identifier
    sym"@text.title"         { Title }, -- Title
    sym"@text.uri"           { Underlined }, -- Underlined
    sym"@text.underline"     { Underlined }, -- Underlined
    sym"@text.todo"          { Todo }, -- Todo
    sym"@comment"            { Comment }, -- Comment
    sym"@punctuation"        { Delimiter }, -- Delimiter
    sym"@constant"           { Constant }, -- Constant
    sym"@constant.builtin"   { Special }, -- Special
    sym"@constant.macro"     { Define }, -- Define
    sym"@define"             { Define }, -- Define
    sym"@macro"              { Macro }, -- Macro
    sym"@string"             { String }, -- String
    sym"@string.regexp"      { Operator }, -- String
    sym"@string.escape"      { Operator }, -- String
    sym"@string.escape"      { SpecialChar }, -- SpecialChar
    sym"@string.special"     { SpecialChar }, -- SpecialChar
    sym"@character"          { Character }, -- Character
    sym"@character.special"  { SpecialChar }, -- SpecialChar
    sym"@number"             { Number }, -- Number
    sym"@boolean"            { Boolean }, -- Boolean
    sym"@float"              { Float }, -- Float
    sym"@function"           { Function }, -- Function,,
    sym"@function.call.lua"  { Function }, -- Function,,
    sym"@function.builtin"   { Special }, -- Special
    sym"@function.macro"     { Macro }, -- Macro
    sym"@parameter"          { Identifier }, -- Identifier
    sym"@method"             { Function }, -- Function
    sym"@field"              { Identifier }, -- Identifier
    sym"@property"           { Identifier }, -- Identifier
    sym"@constructor"        { Special }, -- Special
    sym"@conditional"        { Conditional }, -- Conditional
    sym"@repeat"             { Repeat }, -- Repeat
    sym"@label"              { Label }, -- Label
    sym"@operator"           { Operator }, -- Operator
    sym"@keyword"            { Keyword }, -- Keyword
    sym"@keyword.operator"   { Operator }, -- Keyword
    sym"@keyword.return"     { fg = palette.peachRed, gui = "italic" }, -- Keyword
    sym"@keyword.import.cpp" { PreProc }, -- Keyword
    sym"@exception"          { Exception }, -- Exception
    sym"@variable"           { fg = palette.fujiWhite }, -- Identifier
    sym"@variable.parameter" { fg = palette.oniViolet2 }, -- Identifier
    sym"@variable.lua"       { sym"@variable" },
    sym"@variable.builtin"   { PreProc },
    sym"@variable.member"    { Identifier },
    sym"@type"               { Type }, -- Type
    sym"@type.definition"    { Typedef }, -- Typedef
    sym"@storageclass"       { StorageClass }, -- StorageClass
    sym"@structure"          { Structure }, -- Structure
    sym"@namespace"          { Identifier }, -- Identifier
    sym"@include"            { Include }, -- Include
    sym"@preproc"            { PreProc }, -- PreProc
    sym"@debug"              { Debug }, -- Debug
    sym"@tag"                { Tag }, -- Tag
    sym"@module"             { Structure }, -- Tag
    sym"@constructor.lua"    { Keyword },

    -- LSP Tokens
    sym"@lsp.type.parameter"                  { sym"@variable.parameter" },
    sym"@lsp.type.variable"                   { },
    sym"@lsp.type.variable.lua"               { sym"@lsp.type.variable" },
    sym"@lsp.mod.readonly"                    { Constant },
    sym"@lsp.typemod.variable.global"         { Constant },
    sym"@lsp.typemod.method.defaultLibrary"   { Special },
    sym"@lsp.typemod.function.defaultLibrary" { Special },

    -- Plugins

    -- Gitsigns
    GitSignsAdd    { DiffAdded },
    GitSignsChange { DiffChanged },
    GitSignsDelete { DiffDeleted },

    -- MiniDiff
    MiniDiffSignAdd      { DiffAdd },
    MiniDiffSignChange   { DiffChange },
    MiniDiffSignDelete   { DiffDelete },
    MiniDiffOverAdd      { DiffAdd },
    MiniDiffOverChange   { DiffText },
    MiniDiffOverContext  { DiffChange },
    MiniDiffOverDelete   { DiffDelete },

    -- Mini Hipatterns
    MiniHipatternsFixme { fg = Normal.bg, bg = DiagnosticError.fg, gui = "bold" },
    MiniHipatternsHack  { fg = Normal.bg, bg = DiagnosticWarning.fg, gui = "bold" },
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
    MiniNotifyBorder { FloatBorder },
    MiniNotifyNormal { NormalFloat },
    MiniNotifyTitle  { FloatTitle },

    -- MiniSurround
    MiniSurround { IncSearch },

    -- MiniTrailspace
    MiniTrailspace { fg = palette.peachRed, bg = palette.peachRed },

    -- Telescope Extensions
    TreesitterContext           { Folded },
    TreesitterContextLineNumber { fg = SpecialKey.fg },

    -- Telescope
    TelescopeBorder          { fg = FloatBorder.fg, bg = Normal.bg },
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
    CmpItemKindText          { fg = Normal.fg },
    CmpItemKindMethod        { sym"@method" },
    CmpItemKindFunction      { Function },
    CmpItemKindConstructor   { sym"@constructor" },
    CmpItemKindField         { sym"@variable.member" },
    CmpItemKindVariable      { MsgArea },
    CmpItemKindClass         { Type },
    CmpItemKindInterface     { Type },
    CmpItemKindModule        { sym"@module" },
    CmpItemKindProperty      { sym"@property" },
    CmpItemKindUnit          { Number },
    CmpItemKindValue         { String },
    CmpItemKindEnum          { Type },
    CmpItemKindKeyword       { Keyword },
    CmpItemKindSnippet       { Special },
    CmpItemKindColor         { Special },
    CmpItemKindFile          { Directory },
    CmpItemKindReference     { Special },
    CmpItemKindFolder        { Directory },
    CmpItemKindEnumMember    { Constant },
    CmpItemKindConstant      { Constant },
    CmpItemKindStruct        { Type },
    CmpItemKindEvent         { Type },
    CmpItemKindOperator      { Operator },
    CmpItemKindTypeParameter { Type },
    CmpItemKindCopilot       { String },

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

    -- checkhealth
    healthError   { DiagnosticError },
    healthSuccess { DiagnosticOk },
    healthWarning { DiagnosticWarn },

    -- Misc
    PortalOrange { fg = "#fd6600" },
    PortalBlue   { fg = "#0078ff" },
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap

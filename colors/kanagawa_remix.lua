-- You probably always want to set this in your vim file
-- vim.opt.background = 'dark'
-- By setting our module to nil, we clear lua's cache,
-- which means the require ahead will *always* occur.

-- This isn't strictly required but it can be a useful trick if you are
-- incrementally editing your config a lot and want to be sure your themes
-- changes are being picked up without restarting neovim.

-- Note if you're working in on your theme and have :Lushify'd the buffer,
-- your changes will be applied with our without the following line.

-- The performance impact of this call can be measured in the hundreds of
-- *nanoseconds* and such could be considered "production safe".

local palette = require("lush_theme.palette")

local term = {
    palette.sumiInk0, -- black
    palette.autumnRed, -- red
    palette.autumnGreen, -- green
    palette.boatYellow2, -- yellow
    palette.crystalBlue, -- blue
    palette.oniViolet, -- magenta
    palette.waveAqua1, -- cyan
    palette.oldWhite, -- white
    palette.fujiGray, -- bright black
    palette.samuraiRed, -- bright red
    palette.springGreen, -- bright green
    palette.carpYellow, -- bright yellow
    palette.springBlue, -- bright blue
    palette.springViolet1, -- bright magenta
    palette.waveAqua2, -- bright cyan
    palette.fujiWhite, -- bright white
    palette.surimiOrange, -- extended color 1
    palette.peachRed, -- extended color 2
}

for index, value in ipairs(term) do
    vim.g["terminal_color_" .. index - 1] = value.hex
end

if vim.opt.background:get() == "dark" then
    vim.g.colors_name = "kanagawa_remix"
    require("lush")(require("lush_theme.kanagawa_remix_dark"))
else
    vim.g.colors_name = "kanagawa_remix"
    require("lush")(require("lush_theme.kanagawa_remix_light"))
end

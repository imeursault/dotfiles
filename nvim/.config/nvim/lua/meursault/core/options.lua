local options = {
    -- encoding
    encoding = "utf-8",
    fileencoding = "utf-8", -- the encoding written to a file
    -- line numbers
    number = true, -- shows absolute line number on cursor line (when relative number is on)
    relativenumber = true, -- show relative line numbers
    -- tabs & indentation
    tabstop = 4, -- 4 spaces for tabs (prettier default)
    shiftwidth = 4, -- 4 spaces for indent width
    expandtab = true, -- expand tab to spaces
    smartindent = true, -- copy indent from current line when starting new one
    -- line wrapping
    wrap = false, -- disable line wrapping
    -- cursor line
    cursorline = true, -- highlight the current cursor line
    -- appearance
    -- turn on termguicolors for nightfly colorscheme to work
    -- (have to use iterm2 or any other true color terminal)
    termguicolors = true,
    background = "dark",-- colorschemes that can be light or dark will be made dark
    signcolumn = "yes", -- show sign column so that text doesn't shift
    -- backspace
    backspace = "indent,eol,start", -- allow backspace on indent, end of line or insert mode start position
    -- split windows
    splitright = true, -- split vertical window to the right
    splitbelow = true, -- split horizontal window to the bottom
    -- turn off swapfile
    swapfile = false,
}

-- set options
for k, v in pairs(options) do
	vim.opt[k] = v
end

-- clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

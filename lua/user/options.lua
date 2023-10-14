local options = {
    cmdheight = 2,
    fileencoding = "utf-8",
    hlsearch = true,
    ignorecase = true,
    pumheight = 10,
    showtabline = 2,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    termguicolors = true,
    swapfile = false,
    undofile = true,
    timeoutlen = 1000,
    updatetime = 300,
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
    cursorline = true,
    number = true,
    relativenumber = true,
    numberwidth = 4,
    signcolumn = "yes",
    scrolloff = 8,
    colorcolumn = "80",
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

--vim.cmd.colorscheme "catppuccin" --catppuccin-latte catppuccin-frappe catppuccin-macchiato caatppuccin-mocha
local colorscheme = "catppuccin"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("Colorscheme " .. colorscheme .. " not found..")
    return
end

require("catppuccin").setup({
    integrations = {
        cmp = true,
        --gitsigns = true,
        --nvimtree = true,
        treesitter = true,
        --notify = false,
        --mini = {
        --    enabled = true,
        --    indentscope_color = "",
        --},
    }
})

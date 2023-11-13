local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


nvim_tree.setup({
    --sort_by = "modification_time",
    disable_netrw = true,
    sort = {
        sorter = "modification_time",
    },
    view = {
        width = 30,
    },
    filters = {
        dotfiles = false,
    },
})



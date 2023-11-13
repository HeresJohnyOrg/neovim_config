local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end
--local status_ok, builtin = pcall(require "telescope.builtin")
--if not status_ok then
--    return
--end

telescope.setup{
    defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },
    },
    pickers = {
        find_files = {
            theme = "dropdown",
        }
    },
}
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fff", builtin.git_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})

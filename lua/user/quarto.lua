local quarto_statu_ok, quarto = pcall(require, "quarto")
if not quarto_statu_ok then
    return
end

quarto.setup({
    debug = false,
    closePreviewOnExit = true,
    lspFeatures = {
        enabled = true,
        languages = {"r", "python", "julia", "bash"},
        chunks = "curly",
        diagnostics = {
            enabled = true,
            triggers = {"BufWritePost"}
        },
        completion = {
            enabled = true,
        },
    },
    codeRunner = {
        enabled = false,
        default_method = nil,
        ft_runners = {},
        never_run = { "yaml" },
    },
    keymap = {
        hover = "K",
        definition = "gd",
        rename = "<leader>lR",
        references = "gr",
    }
})

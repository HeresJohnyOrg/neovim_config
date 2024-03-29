local configs = require("nvim-treesitter.configs")

configs.setup {
    ensure_installed = { "python", "c", "lua", "rust", "haskell", "javascript", "css", "html", "bash", "markdown"},
    sync_install = false,
    auto_install = true,
}

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "rust", "vim", "python", "bash", "json", "yaml", "html", "css", "javascript", "typescript", "tsx", "go", "java", "php", "toml", "regex", "graphql", "comment","tsx", "vue"},

    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,
    },

}
return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "cssls",
            "eslint",
            "gopls",
            "html",
            "lua_ls",
            "tailwindcss",
            "vtsls",
            "vue_ls"
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}

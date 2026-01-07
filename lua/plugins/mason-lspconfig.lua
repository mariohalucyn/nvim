return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "cssls",
            "eslint",
            "gopls",
            "html",
            "intelephense",
            "lua_ls",
            "pyright",
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

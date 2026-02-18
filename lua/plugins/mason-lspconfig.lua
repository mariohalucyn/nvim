return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "cssls",
            "eslint",
            "html",
            "intelephense",
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

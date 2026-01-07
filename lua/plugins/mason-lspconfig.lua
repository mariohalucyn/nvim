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
            "ts_ls",
            "vue_ls"
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function()
        vim.lsp.config("ts_ls", {
            init_options = {
              plugins = {
                {
                  name = "@vue/typescript-plugin",
                  location = vim.fn.stdpath "data" .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
                  languages = { "vue" },
                },
              },
            },
            filetypes = { "typescript", "javascript",  "vue" },
        })
        -- vim.lsp.config("vtsls", {
        --     filetypes = { "typescript", "javascript",  "vue" },
        --     settings = {
        --         vtsls = {
        --             tsserver = {
        --                 globalPlugins = {
        --                     {
        --                         name = "@vue/typescript-plugin",
        --                         location = vim.fn.stdpath "data" .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
        --                         languages = { "vue" },
        --                         configNamespace = "typescript",
        --                     }
        --                 }
        --             }
        --         }
        --     }
        -- })
        vim.lsp.enable({
            "vue_ls",
            "ts_ls",
            -- "vtsls",
        })
    end,
}

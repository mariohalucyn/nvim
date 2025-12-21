return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local parsers = {
            "bash",
            "css",
            "gitcommit",
            "gitignore",
            "go",
            "html",
            "javascript",
            "json",
            "lua",
            "make",
            "markdown",
            "markdown_inline",
            "php",
            "python",
            "sql",
            "query",
            "typescript",
            "vim",
            "vimdoc",
            "vue",
            "yaml"
        }

        require("nvim-treesitter").setup {
            -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
            install_dir = vim.fn.stdpath("data") .. "/site",
        }

        require("nvim-treesitter").install(parsers)

        vim.api.nvim_create_autocmd("FileType", {
            pattern = parsers,
            callback = function()
                vim.treesitter.start()
            end,
        })
    end
}

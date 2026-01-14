return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function ()
        local parsers = {
            "css",
            "comment",
            "dockerfile",
            "gitcommit",
            "gitignore",
            "go",
            "gomod",
            "gosum",
            "gotmpl",
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
            "toml",
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
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
}

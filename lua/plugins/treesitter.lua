return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  version = false,
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { "c", "go", "javascript", "lua", "php", "python", "sql", "typescript", "vim", "vimdoc", "vue", "query", "markdown", "markdown_inline" },
      highlight = {
        enable = true,
      },
    })
  end
}

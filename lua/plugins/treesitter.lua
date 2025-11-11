return {
  "nvim-treesitter/nvim-treesitter",
  version = false,
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { "c", "go", "javascript", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
      highlight = {
        enable = true,
      },
    })
  end
}

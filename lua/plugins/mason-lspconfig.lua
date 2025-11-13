return {
  "mason-org/mason-lspconfig.nvim",
  opts = {
    ensure_installed = { "cssls", "gopls", "html", "intelephense", "lua_ls", "tailwindcss", "ts_ls", "vtsls", "vue_ls" },
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  config = function(_, opts)
    require("mason-lspconfig").setup(opts)

    vim.lsp.config("vtsls", {
      filetypes = { "typescript", "javascript", "vue" },
      on_attach = function()
        vim.lsp.enable("vue_ls")
      end,
    })

    vim.lsp.enable({ "vtsls" })
  end
}

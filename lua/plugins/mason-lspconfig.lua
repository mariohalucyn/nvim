return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
      ensure_installed = { "cssls", "gopls", "html", "intelephense", "lua_ls", "tailwindcss", "ts_ls", "vtsls", "vue_ls" },
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}

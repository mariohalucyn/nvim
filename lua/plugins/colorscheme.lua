--[[
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function ()
    require("catppuccin").setup({
      transparent_background = true,
      float = {
        transparent = true,
      },
    })
    vim.cmd("colorscheme catppuccin")
  end
}
]]--

return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
    require("rose-pine").setup({
      styles = {
        transparency = true,
      },
    })
		vim.cmd("colorscheme rose-pine")
	end
}

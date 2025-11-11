vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  signs = false,
})

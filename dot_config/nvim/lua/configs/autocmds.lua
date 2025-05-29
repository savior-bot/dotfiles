-- Example: 2 spaces for YAML, 8 spaces for Makefiles
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "yaml", "yml" },
  callback = function() vim.opt_local.shiftwidth = 2 end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "make",
  callback = function()
    vim.opt_local.noexpandtab = true  -- Makefiles require actual tabs
    vim.opt_local.shiftwidth = 4
  end
})


local group = vim.api.nvim_create_augroup("format_python", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  group = group,
  pattern = "*.py",
  command = "silent! !ruff format %"
})

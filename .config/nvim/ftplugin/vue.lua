local group = vim.api.nvim_create_augroup("format_vue", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  group = group,
  pattern = "*.vue",
  command = "silent! !npx prettier --write %"
})

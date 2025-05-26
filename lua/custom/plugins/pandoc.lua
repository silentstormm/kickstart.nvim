-- local pandoc_syntax = vim.api.nvim_create_augroup("pandoc-syntax", { clear=true })
-- vim.api.nvim_create_autocmd({
--   "BufNewFile",
--   "BufFilePre",
--   "BufRead"
-- }, {
--   group = pandoc_syntax,
--   pattern = "*.md",
-- })
vim.filetype.add({
  extension = {
    md = "markdown.pandoc"
  }
})

return {
  'vim-pandoc/vim-pandoc-syntax',
}

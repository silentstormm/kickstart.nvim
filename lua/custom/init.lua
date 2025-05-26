vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.filetype.add {
  extension = {
    vert = 'glsl',
    frag = 'glsl',
    tesc = 'glsl',
    tese = 'glsl',
    geom = 'glsl',
    comp = 'glsl',
  },
}

vim.o.sh = 'pwsh'
vim.o.shell = 'pwsh'
vim.o.shellcmdflag = '-command'
vim.o.shellquote = '"'
vim.o.shellquote = ''

vim.diagnostic.config { virtual_text = true }

vim.api.nvim_create_autocmd({ 'bufreadpre', 'bufnewfile' }, {
  pattern = '*.cf',
  command = 'set ft=lbnf',
})

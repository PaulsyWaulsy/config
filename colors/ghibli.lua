local colors = {
  navy = '#22577a',
  torquise = '#38a3a5',
  aqua = '#57cc99',
  green = '#80ed99',
  lightGreen = '#c7f9cc',
}

vim.g.colors_name = 'ghibli'

vim.api.nvim_set_hl(0, 'Comment', { fg = colors.lightGreen, italic = true })
vim.api.nvim_set_hl(0, 'Keyword', { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, 'String', { fg = colors.green })
vim.api.nvim_set_hl(0, 'Function', { fg = colors.torquise, bold = true })
vim.api.nvim_set_hl(0, 'Type', { fg = colors.navy })

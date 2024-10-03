local colors = {
	coral = "#f78b6c",
	flax = "#e9e092",
	azure = "#cdddde",
	slate = "#617885",
	photo_blue = "#96e8f4",
	tiffany = "#e8b58c",
	jordy = "#81aaff",
	pacific = "#39aecd",
	orchid = "#e084de",
	reef = "#e88c8c",
	white = "#ffffff",
	black = "#101010",
}
vim.g.colors_name = "sunflower"

-- UI Highlight Groups
vim.api.nvim_set_hl(0, "Visual", { bg = colors.pacific, fg = colors.white })
vim.api.nvim_set_hl(0, "Search", { bg = colors.flax, fg = colors.black })

vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.flax })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.slate })

-- Menu Highlight Groups
vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.slate })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.azure })

-- Syntaxt Highlight Groups
vim.api.nvim_set_hl(0, "@comment", { fg = colors.slate, italic = true })

vim.api.nvim_set_hl(0, "@constant", { fg = colors.azure })
vim.api.nvim_set_hl(0, "@constant.builtin", { fg = colors.azure })
vim.api.nvim_set_hl(0, "@constant.macro", { fg = colors.azure })

vim.api.nvim_set_hl(0, "@variable", { fg = colors.azure })
vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.reef })
vim.api.nvim_set_hl(0, "@variable.parameter", { fg = colors.azure })
vim.api.nvim_set_hl(0, "@variable.member", { fg = colors.azure })

vim.api.nvim_set_hl(0, "@string", { fg = colors.tiffany })
vim.api.nvim_set_hl(0, "@string.documentation", { fg = colors.tiffany })
vim.api.nvim_set_hl(0, "@string.regexp", { fg = colors.tiffany })
vim.api.nvim_set_hl(0, "@string.escape", { fg = colors.tiffany })
vim.api.nvim_set_hl(0, "@string.special", { fg = colors.tiffany })
vim.api.nvim_set_hl(0, "@string.special.symbol", { fg = colors.tiffany })
vim.api.nvim_set_hl(0, "@string.special.path", { fg = colors.tiffany })

vim.api.nvim_set_hl(0, "@character", { fg = colors.tiffany })
vim.api.nvim_set_hl(0, "@character.special", { fg = colors.azure })

vim.api.nvim_set_hl(0, "@number", { fg = colors.reef })
vim.api.nvim_set_hl(0, "@boolean", { fg = colors.reef })
vim.api.nvim_set_hl(0, "@number.float", { fg = colors.reef })

vim.api.nvim_set_hl(0, "@variable", { fg = colors.azure })

vim.api.nvim_set_hl(0, "@function", { fg = colors.jordy })
vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.jordy })
vim.api.nvim_set_hl(0, "@function.call", { fg = colors.jordy })
vim.api.nvim_set_hl(0, "@function.macro", { fg = colors.jordy })

vim.api.nvim_set_hl(0, "@attribute", { fg = colors.photo_blue })
vim.api.nvim_set_hl(0, "@attribute.builtin", { fg = colors.photo_blue })

vim.api.nvim_set_hl(0, "@parameter", { fg = colors.azure })

vim.api.nvim_set_hl(0, "@keyword", { fg = colors.photo_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.coroutine", { fg = colors.photo_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.function", { fg = colors.photo_blue })
vim.api.nvim_set_hl(0, "@keyword.operator", { fg = colors.photo_blue })
vim.api.nvim_set_hl(0, "@keyword.import", { fg = colors.photo_blue })
vim.api.nvim_set_hl(0, "@keyword.type", { fg = colors.photo_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.modifier", { fg = colors.photo_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = colors.photo_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.debug", { fg = colors.reef })
vim.api.nvim_set_hl(0, "@keyword.exception", { fg = colors.photo_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = colors.photo_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.conditional.ternary", { fg = colors.photo_blue, italic = true })
vim.api.nvim_set_hl(0, "@keyword.return", { fg = colors.photo_blue, italic = true })

vim.api.nvim_set_hl(0, "@conditional", { fg = colors.photo_blue })
vim.api.nvim_set_hl(0, "@repeat", { fg = colors.photo_blue })
vim.api.nvim_set_hl(0, "@label", { fg = colors.photo_blue })
vim.api.nvim_set_hl(0, "@operator", { fg = colors.jordy })
vim.api.nvim_set_hl(0, "@exception", { fg = colors.photo_blue })

vim.api.nvim_set_hl(0, "@type", { fg = colors.flax })
vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.flax })
vim.api.nvim_set_hl(0, "@type.definition", { fg = colors.flax })

vim.api.nvim_set_hl(0, "@storageclass", { fg = colors.photo_blue })
vim.api.nvim_set_hl(0, "@prepoc", { fg = colors.flax })

vim.api.nvim_set_hl(0, "@text", { fg = colors.slate })

vim.api.nvim_set_hl(0, "@field", { fg = colors.photo_blue })
vim.api.nvim_set_hl(0, "@property", { fg = colors.photo_blue })
vim.api.nvim_set_hl(0, "@punctuation", { fg = colors.azure })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = colors.azure })
vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = colors.orchid })

vim.api.nvim_set_hl(0, "Special", { fg = colors.flax })
vim.api.nvim_set_hl(0, "String", { fg = colors.tiffany })
vim.api.nvim_set_hl(0, "Directory", { fg = colors.jordy })

-- Set the color for function icons
vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = colors.jordy }) -- Change to your desired color
vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = colors.azure }) -- Change to your desired color
vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = colors.flax }) -- Change to your desired color
vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = colors.jordy }) -- Change to your desired color
vim.api.nvim_set_hl(0, "CmpBorder", { fg = colors.jordy }) -- Change to your desired color

vim.api.nvim_set_hl(0, "WhichNormal", { bg = "none" })

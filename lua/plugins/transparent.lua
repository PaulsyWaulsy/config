local colors = {
	coral = "#f78b6c",
	flax = "#e9e092",
	azure = "#cdddde",
	slate = "#617885",
	photo_blue = "#96e8f4",
	tiffany = "#8ce8b5",
	jordy = "#81aaff",
	pacific = "#39aecd",
	orchid = "#e084de",
	reef = "#e88c8c",
}

function Transparent(color)
	color = color or "sunflower"

	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none", fg = colors.flax })
	vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = colors.slate })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
	vim.cmd("highlight WinSeparator guifg=black guibg=none")
end

return {
	"folke/tokyonight.nvim",
	config = function()
		Transparent()
	end,
}

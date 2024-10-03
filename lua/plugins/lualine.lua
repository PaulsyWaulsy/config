-- Bubbles config for lualine

-- stylua: ignore
local colors = {
  black  = '#080808',
  white  = '#ffffff',
	coral = "#f78b6c",
	flax = "#e9e092",
	azure = "#cdddde",
	slate = "#617885",
	photo_blue = "#96e8f4",
	tiffany = "#8ce8d9",
	jordy = "#81aaff",
	pacific = "#39aecd",
	orchid = "#d970d6",
}

local sunflower_theme = {
	normal = {
		a = { fg = colors.black, bg = colors.flax },
		b = { fg = colors.white, bg = colors.slate },
		c = { fg = colors.white },
	},

	insert = { a = { fg = colors.black, bg = colors.jordy } },
	visual = { a = { fg = colors.black, bg = colors.tiffany } },
	replace = { a = { fg = colors.black, bg = colors.coral } },

	inactive = {
		a = { fg = colors.white, bg = colors.black },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.white },
	},
}

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = sunflower_theme,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { { "mode", right_padding = 2 } },
				lualine_b = { "filename", "branch" },
				lualine_c = {
					"%=", --[[ add your center compoentnts here in place of this comment ]]
				},
				lualine_x = {},
				lualine_y = { "filetype", "progress" },
				lualine_z = {
					{ "location", left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
			tabline = {},
			extensions = {},
		})
	end,
}

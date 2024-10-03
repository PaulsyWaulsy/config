return {
	{
		"kawre/leetcode.nvim",
		cmd = "Leet",
		build = ":TSUpdate html",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim", -- required by telescope
			"MunifTanjim/nui.nvim",

			-- optional
			"nvim-treesitter/nvim-treesitter",
			--"rcarriga/nvim-notify",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			lang = "cpp",
			url = "leetcode.com",
			browser = "firefox",
			plugins = {
				non_standalone = true,
			},
		},
	},
}

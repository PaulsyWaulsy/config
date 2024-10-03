return {
	{
		"hrsh7th/nvim-cmp",
		lazy = false,
		priority = 100,
		dependencies = {
			"onsails/lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			{ "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			local cmp_kinds = {
				Text = "",
				Method = "",
				Function = "",
				Constructor = "",
				Field = "",
				Variable = "",
				Class = "",
				Interface = "",
				Module = "",
				Property = "",
				Unit = "",
				Value = "",
				Enum = "",
				Keyword = "",
				Snippet = "",
				Color = "",
				File = "",
				Reference = "",
				Folder = "",
				EnumMember = "",
				Constant = "",
				Struct = "",
				Event = "",
				Operator = "",
				TypeParameter = "",
			}

			local cmp = require("cmp")
			local luasnip = require("luasnip")
			luasnip.config.setup({})

			local MAX_LABEL_WIDTH = 30
			local ELLIPLIL_CHAR = "…"
			local EMPTY = ""

			cmp.setup({

				preselect = cmp.PreselectMode.Item,

				experimental = {
					ghost_text = true,
				},

				window = {
					completion = cmp.config.window.bordered({
						winhighlight = "Normal:Pmenu,FloatBorder:white,CursorLine:PmenuSel,Search:None",
					}),
					documentation = cmp.config.window.bordered({
						winhighlight = "Normal:Pmenu,FloatBorder:white,CursorLine:PmenuSel,Search:None",
					}),
					max_width = 30,
				},

				completion = {
					completeopt = "menu,menuone,noinsert", -- Example configuration
				},

				formatting = {
					expandable_indicator = false,
					fields = { "kind", "abbr", "menu" },
					format = function(_, vim_item)
						local content = vim_item.abbr
						vim_item.menu = EMPTY
						if #content > MAX_LABEL_WIDTH then
							vim_item.abbr = vim.fn.strcharpart(content, 0, MAX_LABEL_WIDTH) .. ELLIPLIL_CHAR
						end
						vim_item.kind = cmp_kinds[vim_item.kind] or ""
						return vim_item
					end,
				},

				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},

				sorting = {
					comparators = {
						cmp.config.compare.locality,
						cmp.config.compare.recently_used,
						cmp.config.compare.exact,
						cmp.config.compare.defualt,
					},
				},

				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping.select_next_item(),
					["<S-Tab>"] = cmp.mapping.select_prev_item(),
					["<C-Space>"] = cmp.mapping.complete({}),
					["<C-l>"] = cmp.mapping(function()
						if luasnip.expand_or_locally_jumpable() then
							luasnip.expand_or_jump()
						end
					end, { "i", "s" }),
					["<C-h>"] = cmp.mapping(function()
						if luasnip.locally_jumpable(-1) then
							luasnip.jump(-1)
						end
					end, { "i", "s" }),

					-- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
					--    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
				}),
				sources = {
					{
						name = "lazydev",
						-- set group index to 0 to skip loading LuaLS completions as lazydev recommends it
						group_index = 0,
					},
					{ name = "nvim_lsp", group_index = 1 },
					{ name = "luasnip", group_index = 2 },
					{ name = "path", group_index = 3 },
				},

				performance = {
					max_view_entries = 10,
				},
			})
		end,
	},
}

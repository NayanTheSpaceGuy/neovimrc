return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			char = "│",
			tab_char = "│",
			smart_indent_cap = true,
			highlight = "Function",
		},
		scope = {
			enabled = false,
			show_start = false,
			show_end = false,
		},
		exclude = {
			filetypes = {
				"help",
				"alpha",
				"dashboard",
				"Trouble",
				"trouble",
				"lazy",
				"mason",
				"toggleterm",
				"lazyterm",
			},
		},
	},
	config = function()
		require("ibl").setup()
	end,
}

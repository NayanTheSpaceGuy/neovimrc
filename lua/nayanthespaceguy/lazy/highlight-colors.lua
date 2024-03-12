return {
	"brenoprata10/nvim-highlight-colors",
	opts = {},
	config = function()
		require("nvim-highlight-colors").setup({
			render = "background", -- or 'foreground' or 'virtual'
			enable_named_colors = true,
			enable_tailwind = true,
		})
	end,
}

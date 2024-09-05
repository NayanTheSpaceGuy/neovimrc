return {
	{
		"olimorris/codecompanion.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("codecompanion").setup({
				strategies = {
					chat = {
						adapter = "ollama",
					},
					inline = {
						adapter = "ollama",
					},
					agent = {
						adapter = "ollama",
					},
				},
				adapters = {
					llama3 = function()
						return require("codecompanion.adapters").extend("ollama", {
							name = "llama3.1:8b", -- Ensure this adapter is differentiated from Ollama
							schema = {
								model = {
									default = "llama3.1:8b",
								},
								num_ctx = {
									default = 16384,
								},
								num_predict = {
									default = -1,
								},
							},
						})
					end,
				},
			})
		end,
	},
}

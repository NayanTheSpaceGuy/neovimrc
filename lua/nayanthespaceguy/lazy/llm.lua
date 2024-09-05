return {
	{
		"huggingface/llm.nvim",
		opts = {},
		config = function()
			require("llm").setup({
				tokens_to_clear = { "<|endoftext|>" },
				fim = {
					enabled = true,
					prefix = "<fim_prefix>",
					middle = "<fim_middle>",
					suffix = "<fim_suffix>",
				},
				model = "starcoder2:15b",
				url = "http://localhost:8080", -- llm-ls uses "/generate"
				request_body = {
					parameters = {
						temperature = 0.2,
						top_p = 0.95,
					},
				},
				context_window = 8192,
				tokenizer = {
					repository = "bigcode/starcoder2-15b",
				},
			})
		end,
	},
}

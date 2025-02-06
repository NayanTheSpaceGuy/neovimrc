require("nayanthespaceguy.set")
require("nayanthespaceguy.remap")

require("nayanthespaceguy.lazy_init")

local augroup = vim.api.nvim_create_augroup
local NayanTheSpaceGuyGroup = augroup("NayanTheSpaceGuy", {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

function R(name)
	require("plenary.reload").reload_module(name)
end

vim.filetype.add({
	extension = {
		templ = "templ",
	},
})

vim.cmd("autocmd BufRead,BufNewFile *.necronux set filetype=pkl")

autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})

autocmd({ "BufWritePre" }, {
	group = NayanTheSpaceGuyGroup,
	pattern = "*",
	command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

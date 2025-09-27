return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({})
		vim.keymap.set("n", "<leader>gi", "<cmd>Gitsigns preview_hunk<cr>")
	end,
}

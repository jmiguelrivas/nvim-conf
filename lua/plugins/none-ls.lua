return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local none_ls = require("null-ls")

		none_ls.setup({
			sources = {
				-- Keep Prettier for JS/TS/Vue
				none_ls.builtins.formatting.prettier,
			},
		})

		-- Keymap for manual formatting
		vim.keymap.set("n", "<C-i>", function()
			vim.lsp.buf.format({ async = true })
		end, { desc = "Format file with LSP" })
	end,
}

local null_ls = require("null-ls")

null_ls.setup({
	debug = true,
	sources = {
		null_ls.builtins.completion.spell,
		null_ls.builtins.diagnostics.rubocop,
		null_ls.builtins.formatting.erb_lint,
		null_ls.builtins.formatting.htmlbeautifier,
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.formatting.rubocop,
		null_ls.builtins.formatting.stylua,
		require("none-ls.diagnostics.eslint"),
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ async = false })
				end,
			})
		end
	end,
})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

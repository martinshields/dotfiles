--open all folds on startup
vim.api.nvim_exec(
	[[
  autocmd BufReadPost,FileReadPost * normal zR
]],
	false
)

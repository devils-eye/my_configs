-- Use this table to disable/enable filesystem
vim.g.copilot_filesystem = { xml = false }
vim.cmd[[highlight CopilotSuggestion guifg=#555555 ctermfg=8]]

-- Rempaing tab to ctrl+ Enter
vim.cmd[[imap <silent><script><expr> <C-CR> copilot#Accept("\<CR>")]]
vim.g.copilot_no_tab_map = true



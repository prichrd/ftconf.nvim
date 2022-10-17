if vim.g.loaded_ftconf == 1 then
  return
end
vim.g.loaded_ftconf = 1

local group = vim.api.nvim_create_augroup("ftconf", {clear = false})
local command = "lua require('ftconf').load()"
vim.api.nvim_create_autocmd('BufRead', {
  pattern = {"*"},
  command = command,
  group = group,
})
vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = {"*"},
  command = command,
  group = group
})

local M = {}

M._lang_cfg = {}

M.setup = function(cfg)
  for k, v in pairs(cfg) do
    M._lang_cfg[k] = v
  end
end

M.load = function()
  local bufnr = vim.api.nvim_get_current_buf()
  local winid = vim.api.nvim_get_current_win()
  if M._lang_cfg[vim.bo.filetype] then
    M._lang_cfg[vim.bo.filetype](bufnr, winid)
  end
end

return M

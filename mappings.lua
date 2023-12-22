local M = {}

M.general = {
  n = {
    ["Q"] = { ":q<CR>", "Close the current buffer"},
  }
}

M.hop = {
  n = {
    ["<leader>j"] = { ":HopWord<CR>", "Navigate through visual motions"},
  }
}

return M

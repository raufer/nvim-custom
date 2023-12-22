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

M.truezen = {
  n = {
    ["<leader>zn"] = { ":TZNarrow<CR>", "narrow a text region for better focus"},
    ["<leader>zf"] = { ":TZFocus<CR>", "focus the current window"},
    ["<leader>zm"] = { ":TZMinimalist<CR>", "disable ui components (e.g. numbers, tabline, statusline)"},
    ["<leader>za"] = { ":TZAtaraxis<CR>", "good ol' zen mode"},
  },
  v = {
    ["<leader>zn"] = { ":'<,'>TZNarrow<CR>", "narrow a text region for better focus"},
  }
}

return M

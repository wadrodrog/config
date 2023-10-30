local function run(type)
    local f = vim.fn.expand('%')
    local n = vim.fn.expand('%:r')

    local cmds = {
        python = "python " .. f,
        cpp = "g++ " .. f .. " -o " .. n .. " && " .. n,
        rust = "cargo run",
    }

    return cmds[type]
end


-- Set commands for different filetypes
local terminal = require("nvterm.terminal")

local toggle_modes = {'n', 't'}

local mappings = {
  { 'n', '<F5>', function () terminal.send(run(vim.bo.filetype)) end },
  { toggle_modes, '<leader>th', function () terminal.toggle('horizontal') end },
  { toggle_modes, '<leader>tv', function () terminal.toggle('vertical') end },
  { toggle_modes, '<leader>tf', function () terminal.toggle('float') end },
}

local opts = { noremap = true, silent = true }

for _, mapping in ipairs(mappings) do
  vim.keymap.set(mapping[1], mapping[2], mapping[3], opts)
end

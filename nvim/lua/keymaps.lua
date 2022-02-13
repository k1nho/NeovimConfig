local ops = {noremap = true , silent = true}
local term_ops = {silent = true}

local remapDefKey = vim.api.nvim_set_keymap


-- Alt text moving 
remapDefKey("v", "<A-j>", "<Esc>:m .+1<CR>==gi", ops)
remapDefKey("v", "<A-k>", "<Esc>:m .-2<CR>==gi", ops)

-- Non-mutable behaviour to persist yanked value on register when highliting other text
remapDefKey("v", "p", '"_dP', ops)

-- Leader key (important for explorer menu)
remapDefKey("", "Space", "<Nop>", ops)
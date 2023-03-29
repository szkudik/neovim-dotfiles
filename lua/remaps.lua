-- Set leader as space
vim.g.mapleader = " "

-- Ex under f
vim.keymap.set("n", "<leader>f", vim.cmd.Ex)

-- PackerSync under ps
-- vim.keymap.set("n", "<leader>ps", function() require('packer').PackerSync() end)

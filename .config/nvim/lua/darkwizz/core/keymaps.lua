-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- window management
-- keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
-- keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- write
keymap.set("n", "<leader>ww", "<cmd>w<CR>", { desc = "Write" })

-- move lines
vim.keymap.set({"v","n"}, "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set({"v", "n"}, "<A-k>", ":m '<-2<CR>gv=gv")


-- delete single character without copying into register
keymap.set("n", "x", '"_x', { desc = "Delete without yanking" })

--buffer keymaps
keymap.set("n", "<leader>bo", ":enew<CR>", { desc = "Open a new buffer" }) -- Open a new buffer
keymap.set("n", "<leader>bx", ":bd<CR>", { desc = "Close the current buffer" }) -- Close the current buffer
keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Go to next buffer" }) -- Navigate to the next buffer
keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Go to previous buffer" }) -- Navigate to the previous buffer
keymap.set("n", "<leader>bl", ":ls<CR>", { desc = "List all buffers" }) -- List all buffers
-- keymap.set("n", "<leader>bb", ":Telescope buffers<CR>", { desc = "Pick a buffer to switch to" }) -- Pick a buffer to switch to (useful with telescope or other plugins)
keymap.set("n","<leader>bm", ":lua require('buffer_manager.ui').toggle_quick_menu()<CR>",
  {desc = "Buffer manager"})

--split travel
keymap.set("n","<C-j>","<C-w>j")
keymap.set("n","<C-k>","<C-w>k")
keymap.set("n","<C-h>","<C-w>h")
keymap.set("n","<C-l>","<C-w>l")

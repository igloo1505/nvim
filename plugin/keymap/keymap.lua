-- let mapleader = " "
local keyset = vim.keymap.set
local opts2 = {silent = true, noremap = true, expr = true, replace_keycodes = false}
-- nnoremap <leader>ps : lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<Esc><CR>
keyset("n", "<leader>ps", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input(\"Grep For > \")})<Esc><CR>", {silent = true, nowait = true})
 


keyset("n", "<leader>fkm", ":lua require('telescope.builtin').keymaps()<CR>", {silent = true, nowait = true})

keyset("n", "<space><space>", ":NERDTreeToggle<CR>", {silent = true, nowait = true})
-- nnoremap <leader>ft : NERDTreeToggle<CR>
keyset("n", "<leader>nt", ":NERDTreeFocus<CR>", {silent = true, nowait = true})
-- nnoremap <leader>ts : Telescope<CR>
keyset("n", "<leader>ts", ":Telescope<CR>", {silent = true, nowait = true})
-- nnoremap <leader>bn : bn<CR>
-- nnoremap <leader>bp : np<Cr>
keyset("n", "<leader>fw", ":w<CR>", {silent = true, nowait = true})
-- inoremap jk <Esc>
keyset("i", "jk", "<Esc>", {silent = true, nowait = true})
-- vnoremap jk <Esc>
keyset("v", "jk", "<Esc>", {silent = true, nowait = true})
-- inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
keyset("i", "j", "(pumvisible()) ? (\"<C-n>\") : (\"j\")", opts2)
keyset("n", "<leader>vs", ":vsplit<CR>", {silent= true, nowait=true})

-- inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
keyset("i", "k", "(pumvisible()) ? (\"<C-n>\") : (\"k\")", opts2)

-- nnoremap <leader>fbm : :NERDTreeFromBookmark <CR>
keyset("n", "<leader>fbm", ":NERDTreeFromBookmark <CR>", {silent = true, nowait = true})
-- nnoremap <leader>bm :NERDTree-B<Space>
keyset("n", "<leader>bm", ":NERDTree-B<Space>", {silent = true, nowait = true})
-- nnoremap <leader><tab> : :tabN<CR>
keyset("n", "<leader><tab>", ":tabN<CR>", {silent = true, nowait = true})
-- nnoremap <leader><S-tab> : :tabn<CR>
keyset("n", "<leader><S-tab>", ":tabn<CR>", {silent = true, nowait = true})
-- nnoremap <leader>e : Explore<CR>
keyset("n", "<leader>exp", ":Explore<CR>", {silent = true})
keyset("n", "<leader>qq", ":q<CR>")

-- Tab navigation:
keyset("n", "<C-J>", "<C-W><C-J>")
keyset("n", "<C-K>", "<C-W><C-K>")
-- nnoremap <C-K> <C-W><C-K>
keyset("n", "<C-L>", "<C-W><C-L>")
-- nnoremap <C-L> <C-W><C-L>
keyset("n", "<C-H>", "<C-W><C-H>")
-- nnoremap <C-H> <C-W><C-H>


-- keyset("n", "<S-A-k>", "<C-b>", {silent = true, nowait = true})
keyset("n", "<S-C-j>", "<C-f>", {silent = true, nowait = true})
keyset("n", "<S-C-k>", "<C-b>", {silent = true, nowait = true})




-- Bufstop stuff
keyset("n", "<leader>b", ":Bufstop<CR>", {silent = true})
keyset("n", "<leader>w", ":BufstopPreview<CR>", {silent = true})
keyset("n", "<A-tab>", ":BufstopBack<CR>", {silent = true, nowait = true})
keyset("n", "<S-tab>", ":BufstopForward<CR>", {silent = true, nowait = true})

-- Jupyter & Python stuff:
keyset("n", "]x", "ctrih/^# %%<CR><CR>")


-- Herpoon stuff...
keyset("n", "<leader>hh", ":lua require(\"harpoon.mark\").add_file()<CR>", {silent=true, nowait=true})
keyset("n", "<leader>hs", ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", {silent=true, nowait=true})

keyset("n", "<A-k>", '<cmd>call utils#SwitchLine(line("."), "up")<cr>', { desc = "move line up" })
keyset("n", "<A-j>", '<cmd>call utils#SwitchLine(line("."), "down")<cr>', { desc = "move line down" })

keyset("x", "<A-k>", '<cmd>call utils#MoveSelection("up")<cr>', { desc = "move selection up" })
keyset("x", "<A-j>", '<cmd>call utils#MoveSelection("down")<cr>', { desc = "move selection down" })


-- Multi-cursor stuff:
keyset("n", "<D-j>", "<C-Down>")
vim.cmd([[
let g:VM_maps = {}
let g:VM_maps["Add Cursor Down"] = '<M-S-j>'
let g:VM_maps["Add Cursor Up"] = '<M-S-k>'
]])

vim.api.nvim_create_user_command('SetSource', ':luafile $MYVIMRC', {})

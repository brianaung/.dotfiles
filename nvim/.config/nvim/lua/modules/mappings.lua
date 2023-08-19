-- util function for assigning mapping type
local get_mapper = function(mode, noremap)
  return function(lhs, rhs, opts)
    opts = opts or {}
    opts.noremap = noremap
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- local noremap = get_mapper("n", false)
local nnoremap = get_mapper("n", true)
local inoremap = get_mapper("i", true)
-- local tnoremap = get_mapper("t", true)
-- local vnoremap = get_mapper("v", true)

-- game changer
inoremap("kj", "<esc>")

-- better movement between lines
nnoremap("j", "gj")
nnoremap("k", "gk")
nnoremap("gj", "j")
nnoremap("gk", "k")

-- better movement between windows
nnoremap("c-j", "<c-w><c-j>")
nnoremap("c-k", "<c-w><c-k>")
nnoremap("c-h", "<c-w><c-h>")
nnoremap("c-l", "<c-w><c-l>")

-- make Y behave like other caps
nnoremap("Y", "yg$")

-- remove search highlight
nnoremap("<cr>", "<cmd>nohl<cr><cr>")

-- nnoremap("<leader>v", "<cmd>CHADopen<cr>")

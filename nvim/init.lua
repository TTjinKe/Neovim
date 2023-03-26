-- Options
local options = {
  clipboard = "unnamedplus",
  cmdheight = 2,
  fileencoding = "utf-8",
  mouse = "a",
  pumheight = 30,
  pumwidth = 35,
  showtabline = 2,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  expandtab = true,
  shiftwidth = 4,
  number = true,
  relativenumber = true,
  numberwidth = 5,
  showmode = false,
  cuc = true,
  cul = true,
  linebreak = true,
  autochdir = true,
  autoread = true,
  lisp = true,
  list = true,
  loadplugins = true,
  wrapscan = false,
  winminwidth = 4,
  winminheight = 1,
  winfixheight = true,
  winfixwidth = true,
  breakindent = false,
  wrap = false,
  foldmethod = "manual",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- keyBinding

--[[
        Modes
        normal_mode = "n",
        insert_mode = "i",
        visual_mode = "v",
        visual_block_mode = "x",
        term_mode = "t",
        command_mode = "c",
--]]
local s               = vim.keymap.set
local c               = vim.api.nvim_command
local o               = { noremap = true, silent = true }
local to              = { silent = true }

--- Leader
vim.g.mapleader       = '.'

--  Lexplore
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  local lexplore_switch = true
  s('n', '<Tab>', function()
    if lexplore_switch then
      c(':25 Lexplore')
      lexplore_switch = false
    else
      c(':Lexplore')
      lexplore_switch = true
    end
  end)
end

-- Esc a terminal and write in normal

s("n", '<Esc><Esc><Esc>', "<cmd>wqa!<cr>", o)
s('t', '<a-e>', '<Esc>', to)

-- Choose window

s('n', '<a-w>', '<c-w>k', o)
s('n', '<a-d>', '<c-w>l', o)
s('n', '<a-s>', '<c-w>j', o)
s('n', '<a-a>', '<c-w>h', o)
s('t', '<a-w>', '<c-\\><c-n><c-w>k', to)
s('t', '<a-d>', '<c-\\><c-n><c-w>l', to)
s('t', '<a-s>', '<c-\\><c-n><c-w>j', to)
s('t', '<a-a>', '<c-\\><c-n><c-w>h', to)
s('i', '<a-w>', '<esc><cmd>w<cr><c-w>k', o)
s('i', '<a-d>', '<esc><cmd>w<cr><c-w>l', o)
s('i', '<a-s>', '<esc><cmd>w<cr><c-w>j', o)
s('i', '<a-a>', '<esc><cmd>w<cr><c-w>h', o)

-- Create window

s('n', '<c-d>', '<c-w>v', o)
s('n', '<c-s>', '<c-w>s', o)
s('i', '<c-d>', '<esc><cmd>w<cr><c-w>v', o)
s('i', '<c-s>', '<esc><cmd>w<cr><c-w>s', o)

--[[
--     linux term://bash, <cmd>terminal<cr>
--     linux term://nu, <cmd>terminal nu<cr>
--     windows term://pwsh, <cmd>terminal pwsh<cr>
--     windows term://nu, <cmd>terminal nu<cr>
--]]
s('t', '<c-d>',
  '<c-\\><c-n><cmd>vsplit term://nu<cr><cmd>lua vim.wo.number = false<cr><cmd>lua vim.wo.relativenumber = false<cr>i', o)
s('t', '<c-s>',
  '<c-\\><c-n><cmd>split term://nu<cr><cmd>lua vim.wo.number = false<cr><cmd>lua vim.wo.relativenumber = false<cr>i', o)
s('n', '<a-cr>',
  '<cmd>w<cr><cmd>10 split term://nu<cr><cmd>lua vim.wo.number = false<cr><cmd>lua vim.wo.relativenumber = false<cr>i', o)
s('i', '<a-cr>',
  '<esc><cmd>w<cr><cmd>10 split term://nu<cr><cmd>lua vim.wo.number = false<cr><cmd>lua vim.wo.relativenumber = false<cr>i',
  o)
s('n', '<a-e>', '<cmd>terminal nu<cr><cmd>lua vim.wo.number = false<cr><cmd>lua vim.wo.relativenumber = false<cr>i', o)
s('i', '<a-e>', '<esc><cmd>terminal nu<cr><cmd>lua vim.wo.number = false<cr><cmd>lua vim.wo.relativenumber = false<cr>i',
  o)

-- Window close

s("i", '<Esc><Esc>', "<esc><cmd>q!<cr>", o)
s("n", '<Esc><Esc>', "<cmd>q!<cr>", o)
s('t', '<Esc>', '<c-\\><c-n>', to)
s('t', '<Esc><Esc>', '<c-\\><c-n><cmd>q!<cr>', to)
s('t', '<a-cr>', '<c-\\><c-n><cmd>bd!<cr>', to)

-- Buffer delete

s('i', '<a-c>', '<esc><cmd>bd<cr>', to)
s('n', '<a-c>', '<esc><cmd>bd<cr>', to)
s('t', '<a-c>', '<c-\\><c-n><cmd>bd<cr>', to)
s('i', '<a-x>', '<esc><cmd>bd!<cr>', to)
s('n', '<a-x>', '<esc><cmd>bd!<cr>', to)
s('t', '<a-x>', '<c-\\><c-n><cmd>bd!<cr>', to)

-- Window coordinate

s('n', '<c-k>', '<c-w>+', o)
s('n', '<c-l>', '<c-w>>', o)
s('n', '<c-j>', '<c-w>-', o)
s('n', '<c-h>', '<c-w><', o)
s('t', '<c-k>', '<c-\\><c-n><c-w>+', o)
s('t', '<c-l>', '<c-\\><c-n><c-w>>', o)
s('t', '<c-j>', '<c-\\><c-n><c-w>-', o)
s('t', '<c-h>', '<c-\\><c-n><c-w><', o)
s('i', '<c-k>', '<esc><c-w>+', o)
s('i', '<c-l>', '<esc><c-w>>', o)
s('i', '<c-j>', '<esc><c-w>-', o)
s('i', '<c-h>', '<esc><c-w><', o)

-- Table

s('n', '<Space>', '<cmd>tabnew<cr>', o)
s('n', '<a-k>', '<cmd>tabNext<cr>', o) -- before
s('n', '<a-j>', '<cmd>tabnext<cr>', o)

-- Navigate buffers

s("n", "<a-h>", "<cmd>bnext<CR>", o)
s("n", "<a-l>", "<cmd>bprevious<CR>", o)


-- Plugins config

require('')

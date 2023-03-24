vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "v", action = "vsplit" },
        { key = "<Tab>", action = "close" },
        { key = "n",action = "create" },
        { key = "r",action = "rename" },
        { key = "R",action = "full_rename" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('','<Tab>','<cmd>NvimTreeToggle<cr>')

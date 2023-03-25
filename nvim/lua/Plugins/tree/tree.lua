local nvim_tree_status, nvim_tree = pcall(require, "nvim-tree")

if not nvim_tree_status then
  print("nvim_tree_status error!!")
  return
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

nvim_tree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u",     action = "dir_up" },
        { key = "s",     action = "split" },
        { key = "v",     action = "vsplit" },
        { key = "t",     action = "tabnew" },
        { key = "<Tab>", action = "close" },
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

vim.keymap.set('', '<Tab>', '<cmd>NvimTreeToggle<cr>')

-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
  return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
  return
end

-- configure telescope
telescope.setup({
  pickers = {
    find_files = {
      theme = "ivy",
    }
  },
})

vim.keymap.set('', '<c-f>', '<cmd>Telescope find_files<cr>')

local treesitter=require("nvim-treesitter.configs")

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true, disable = { "python" } },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "c",
    "cpp",
    "json",
    "vim",
    "help",
    "cmake",
    "python",
    "java",
    "html",
    "css",
    "javascript",
  },
  -- auto install above language parsers
  auto_install = true,
})

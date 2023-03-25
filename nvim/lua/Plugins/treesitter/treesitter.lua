local nvim_treesitter_status, nvim_treesitter = pcall(require, "nvim-treesitter")
local nvim_treesitter_configs_status, nvim_treesitter_configs = pcall(require, "nvim-treesitter.configs")

if not nvim_treesitter_status then
  print("nvim_treesitter_status error!!")
  return
end


if not nvim_treesitter_configs_status then
  print("nvim_treesitter_configs_status error!!")
  return
end

-- configure treesitter

nvim_treesitter_configs.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "help",
    "python",
    "java",
    "lua",
    "c",
    "cpp",
    "make",
    "cmake",
    "html",
    "css",
    "javascript",
    "json",
    "json5",
    "jsdoc",
    "vue",
    "markdown",
    "markdown_inline",
    "rust",
    "toml",
    "bash",
    "ini",
    "todotxt",
  },
  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,
})

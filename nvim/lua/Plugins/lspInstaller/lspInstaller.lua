local lsp_installer_status, lsp_installer = pcall(require, "nvim-lsp-installer")

if not lsp_installer_status then
  print("lsp_installer_status error!!")
  return
end

lsp_installer.setup({
  automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
  ui = {
    icons = {
      server_installed = "✓",
      server_pending = "➜",
      server_uninstalled = "✗"
    }
  }
})

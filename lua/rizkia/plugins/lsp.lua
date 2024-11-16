--mason provides a repository and frontend that helps a user manage the installation of various third-party tools (LSP servers, formatters, linters, etc...) that can be useful when running neovim. It also provides an API for plugin developers. (the 'repository' mentioned earlier is not of the tools themselves, but of configuration that details how to install each tool.)
--
--nvim-lspconfig provides (very) basic configurations for LSP servers, and a simpler configuration to interact with neovim. One thing it does not, and cannot easily, provide is the path to the command to use when launching the server. This brings me to...
--
--mason-lspconfig uses Mason to ensure installation of user specified LSP servers and will tell nvim-lspconfig what command to use to launch those servers.
--
--nvim-lsp-installer has been superseded by mason + mason-lspconfig.
--
--I would recommend all of mason, mason-lspconfig, nvim-lspconfig. They do not conflict, they work together.
--
return {
  "neovim/nvim-lspconfig",
  opts = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lspconfig = require("lspconfig")

    -- lspconfig.lua_ls.setup({
    --   capabilities = capabilities,
    -- })

    -- FLUTTER TOOLS START
    -- TIDAK PERLU SETUP DARTLS LAGI DISINI, PLUGIN FLUTTER TOOLS SUDAH MELAKUKANNYA
    -- lspconfig.dartls.setup({
    --   capabilities = capabilities,
    --   cmd = { "dart", "language-server", "--protocol=lsp" },
    -- })
    -- FLUTTER TOOLS END

    -- lspconfig.yamlls.setup({
    --   capabilities = capabilities,
    -- })

    -- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
    -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    -- vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
  end,
}

local opts = { noremap=true, silent=true }

local on_attach = function(client, bufnr)
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<leader>fo', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local function setup_lsp_server(server_name, capabilities)
    local lsp = require "lspconfig"
    local coq = require "coq"
    local server = lsp[server_name]
    local lsp_flags = { 
        debounce_text_changes = 150, 
    }
    if server then
        server.setup(coq.lsp_ensure_capabilities{
            on_attach = on_attach,
            flags = lsp_flags,
            capabilities = capabilities,
        })
    end
end


local rust_tools = require "rust-tools"

local language_servers = {
    "pyright",
    "solargraph",
    "tsserver",
    "hls",
    "gopls",
    "clangd",
}

for _, server_name in ipairs(language_servers) do
    setup_lsp_server(server_name)
end


rust_tools.setup(coq.lsp_ensure_capabilities{
    on_attach = on_attach,
    flags = lsp_flags,
})

vim.cmd('COQnow --shut-up')

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go","javascript", "rust", "typescript", "cpp", "c", "lua", "vim", "vimdoc" },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

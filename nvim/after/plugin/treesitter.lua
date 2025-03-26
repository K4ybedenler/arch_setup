require'nvim-treesitter.configs'.setup {
  ensure_installed = { "yaml", "javascript", "c", "cpp", "lua", "vim" },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

local status_ok, elixir = pcall(require, "elixir")
if not status_ok then
  return
end

elixir.setup({
  settings = elixir.settings({
    dialyzerEnabled = true,
    fetchDeps = false,
    enableTestLenses = true,
    suggestSpecs = false
  }),

  on_attach = function(cilent, bufnr)
    local map_opts = { buffer = true, noremap = true }

    vim.keymap.set("n", "gd", "<cmd>lua vim.diagnostic.open_float()<cr>", map_opts)
  end
})

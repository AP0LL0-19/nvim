-- I want to be able to toggle the autocomplete menu on and off, below is some code that makes it
-- possible.
return {
  "saghen/blink.cmp",
  -- Make blink.cmp toogleable
  opts = function(_, opts)
    vim.b.completion = false

    opts.keymap = {
      preset = "default", --default accept is ctrl, unbind enter because it is annoying
      ["<CR>"] = {}, --unbind enter as auto completion because it is annoying
    }
    Snacks.toggle({
      name = "Completion",
      get = function()
        return vim.b.completion
      end,
      set = function(state)
        vim.b.completion = state
      end,
    }):map("<leader>t")

    return opts
  end,
}

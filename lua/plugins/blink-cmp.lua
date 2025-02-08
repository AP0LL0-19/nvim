-- I want to be able to toggle the autocomplete menu on and off, below is some code that makes it
-- possible.
return {
  "saghen/blink.cmp",
  -- Make blink.cmp toogleable
  opts = function(_, opts)
    vim.b.completion = false

    Snacks.toggle({
      name = "Completion",
      get = function()
        return vim.b.completion
      end,
      set = function(state)
        vim.b.completion = state
      end,
    }):map("<leader>t")

    opts.enabled = function()
      return vim.b.completion ~= false
    end
    return opts
  end,

  keymaps = {
    preset = "default", --default accept is ctrl y
    ["<CR>"] = {},
  },
}

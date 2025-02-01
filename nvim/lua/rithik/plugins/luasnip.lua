return {
  "L3MON4D3/LuaSnip",
  config = function()
    local ls = require("luasnip")

    ls.setup({
      updateevents = "TextChanged,TextChangedI",

      enable_autosnippets = true,
    })

    vim.keymap.set({ "i", "s" }, "<c-k>", function() ls.expand_or_jumpable() end, { silent = true })
    vim.keymap.set(
      { "i", "s" }, "<c-j>",
      function()
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end,
      { silent = true }
    )
  end
}

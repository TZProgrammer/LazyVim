local cmp = require("cmp")
local neogen = require("neogen")

return {
  "nvim-cmp",
  cmp.setup({
    -- You must set mapping if you want.
    mapping = {
      ["<tab>"] = cmp.mapping(function(fallback)
        if neogen.jumpable() then
          neogen.jump_next()
        else
          fallback()
        end
      end, {
        "i",
        "s",
      }),
      ["<S-tab>"] = cmp.mapping(function(fallback)
        if neogen.jumpable(true) then
          neogen.jump_prev()
        else
          fallback()
        end
      end, {
        "i",
        "s",
      }),
    },
  }),
}

return {
  {
    "MaximilianLloyd/ascii.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    lazy = true,
  },
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      local ascii = require("ascii")
      local logo = table.concat(ascii.get_random_global(), "\n")
      opts.dashboard = opts.dashboard or {}
      opts.dashboard.preset = opts.dashboard.preset or {}
      opts.dashboard.preset.header = logo
    end,
  },
}

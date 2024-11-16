return {
  "rcarriga/nvim-notify",
  keys = {
    {
      "<leader>un",
      function()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Dismiss All Notifications",
    },

    -- piggyback on this plugin to disable some keys
    { "<S-h>", "<Nop>", desc = "Prev Buffer" },
    { "<S-l>", "<Nop>", desc = "Next Buffer" },
  },
}

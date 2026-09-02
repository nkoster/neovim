return {
  {
    "folke/snacks.nvim",
    opts = {
      notifier = {
        timeout = 0,
      },
    },
    keys = {
      {
        "<leader>nd",
        function()
          Snacks.notifier.hide()
        end,
        desc = "Dismiss notifications",
      },
      {
        "<leader>nh",
        function()
          Snacks.notifier.show_history()
        end,
        desc = "Notification history",
      },
    },
  },
}

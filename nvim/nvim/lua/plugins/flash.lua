return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    vscode = true,
    ---@type Flash.Config
    opts = {
      modes = {
        char = {
          enabled = false,
          jump_labels = true,
        },
      },
      label = {
        uppercase = false,
      },
      labels = "hjkl;yuiasdfopnmqwertzxcvb,'gHJKLYUISDFOPNMWERTCVBG",
    },
    -- stylua: ignore
    keys = {
      { "s",     mode = { "n", "x", "o" }, false },
      { "S",     mode = { "n", "x", "o" }, false },
      { "f",     mode = { "n", "x", "o" }, false },
      { "F",     mode = { "n", "x", "o" }, false },
      { "t",     mode = { "n", "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "T",     mode = { "n", "x", "o" }, false },
      { "f",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "F",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
      {
        "zj",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump({
            search = { mode = "search", max_length = 0, forward = true, wrap = false, multi_window = false },
            label = { after = { 0, 0 } },
            pattern = "^"
          })
        end,
        desc = "Flash jump line"
      },
      {
        "zk",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump({
            search = { mode = "search", max_length = 0, forward = false, wrap = false, multi_window = false },
            label = { after = { 0, 0 } },
            pattern = "^"
          })
        end,
        desc = "Flash jump line"
      },
    },
  },
}

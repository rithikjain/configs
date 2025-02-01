return {
  "rithikjain/flutter-freezed.nvim",
  dependencies = {
    "L3MON4D3/LuaSnip",
  },
  lazy = false,
  keys = {
    { "<leader>gf", "<cmd>FlutterFreezedGenForCurrentFile<CR>", desc = "Generate flutter freezed for the current file" },
    { "<leader>gi", "<cmd>FlutterFreezedInfoToggle<CR>",        desc = "Toggle flutter freezed generation info" },
    { "<leader>gx", "<cmd>FlutterFreezedStopGen<CR>",           desc = "Stop generating flutter freezed files" },
  },
}

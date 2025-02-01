return {
  "rithikjain/flutter-launch.nvim",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  keys = {
    { "<leader>aa", "<cmd>FlutterAttach<CR>",           desc = "Attach to flutter" },
    { "<leader>as", "<cmd>FlutterRun<CR>",              desc = "Run flutter" },
    { "<leader>ah", "<cmd>FlutterHotReload<CR>",        desc = "Flutter hot reload" },
    { "<leader>ar", "<cmd>FlutterHotRestart<CR>",       desc = "Flutter hot restart" },
    { "<leader>ax", "<cmd>FlutterDetach<CR>",           desc = "Flutter detach" },
    { "<leader>ai", "<cmd>FlutterInfoToggle<CR>",       desc = "Flutter info panel toggle" },
    { "<leader>ad", "<cmd>FlutterAttachToDebugger<CR>", desc = "Flutter attach debugger" },
  },
}

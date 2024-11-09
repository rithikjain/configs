return {
    "rithikjain/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = function()
      vim.keymap.set("n", "<leader>as", ":FlutterRun <CR>", { desc = "Run the flutter project" })
      vim.keymap.set("n", "<leader>ax", ":FlutterQuit <CR>", { desc = "Quit the app" })
      vim.keymap.set("n", "<leader>ar", ":FlutterRestart <CR>", { desc = "Restart flutter app" })
      vim.keymap.set("n", "<leader>ah", ":FlutterReload <CR>", { desc = "Hot reload flutter app" })
      vim.keymap.set("n", "<leader>ao", ":FlutterOutlineToggle <CR>", { desc = "Outline toggle" })
      vim.keymap.set("n", "<leader>alr", ":FlutterLspRestart <CR>", { desc = "Restart LSP" })
      vim.keymap.set("n", "<leader>ad", ":FlutterDevTools <CR>", { desc = "Open devtools" })
      require("flutter-tools").setup({
        dev_tools = {
          autostart = false, -- autostart devtools server if not detected
          auto_open_browser = false, -- Automatically opens devtools in the browser
        },
      })
    end,
  }
  

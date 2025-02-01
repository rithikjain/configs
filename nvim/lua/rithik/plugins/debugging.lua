return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")
    local dapWidgets = require("dap.ui.widgets")

    dap.configurations.dart = {
      {
        type = "dart",
        request = "launch",
        name = "Launch dart",
        dartSdkPath = "~/fvm/default/bin/cache/dart-sdk/bin/dart",
        flutterSdkPath = "~/fvm/default/bin/flutter",
        program = "${workspaceFolder}/lib/main.dart",
        cwd = "${workspaceFolder}",
      },
      {
        type = "flutter",
        request = "launch",
        name = "Launch flutter",
        dartSdkPath = "~/fvm/default/bin/cache/dart-sdk/bin/dart",
        flutterSdkPath = "~/fvm/default/bin/flutter",
        program = "${workspaceFolder}/lib/main.dart",
        cwd = "${workspaceFolder}",
      }
    }

    -- Dart CLI adapter
    dap.adapters.dart = {
      type = 'executable',
      command = 'dart',
      args = { 'debug_adapter' },
    }
    dap.adapters.flutter = {
      type = 'executable',
      command = 'flutter',
      args = { 'debug_adapter' },
    }

    vim.keymap.set('n', '<Leader>db', dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
    vim.keymap.set('n', '<Leader>dc', dap.continue, { desc = "Debug continue" })
    vim.keymap.set('n', '<Leader>dj', dap.step_into, { desc = "Debug step into" })
    vim.keymap.set('n', '<Leader>dk', dap.step_out, { desc = "Debug step out" })
    vim.keymap.set('n', '<Leader>do', dap.step_over, { desc = "Debug step over" })
    vim.keymap.set('n', '<Leader>dr', dap.repl.toggle, { desc = "Debug toggle repl" })
    vim.keymap.set(
      'n', '<Leader>ds',
      function()
        dapWidgets.centered_float(dapWidgets.scopes)
      end,
      { desc = "Debug toggle scopes" }
    )
    vim.keymap.set(
      'n', '<Leader>df',
      function()
        dapWidgets.centered_float(dapWidgets.frames)
      end,
      { desc = "Debug toggle frames" }
    )
    vim.keymap.set(
      'n', '<Leader>dh',
      function()
        dapWidgets.hover()
      end,
      { desc = "Debug view value of expression under cursor" }
    )

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "dap-float",
      callback = function()
        vim.api.nvim_buf_set_keymap(0, "n", "q", "<cmd>close!<CR>", { noremap = true, silent = true })
      end
    })
  end
}

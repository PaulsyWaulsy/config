-- lazy.nvim configuration
return {
  {
    'nvim-neotest/nvim-nio',
  },
  -- nvim-dap: Core DAP plugin
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      -- UI for DAP
      'rcarriga/nvim-dap-ui',
      -- Virtual text for DAP
      'theHamsta/nvim-dap-virtual-text',
      -- Python-specific DAP
      'mfussenegger/nvim-dap-python',
      'nvim-neotest/nvim-nio',
    },
    config = function()
      -- DAP UI setup
      require('dapui').setup()

      -- Virtual text setup
      require('nvim-dap-virtual-text').setup()

      -- Python-specific DAP setup
      local dap_python = require 'dap-python'
      dap_python.setup '~/.virtualenvs/debugpy/bin/python' -- Path to your Python interpreter with debugpy

      -- Key mappings for DAP
      local dap = require 'dap'
      vim.keymap.set('n', '<F1>', dap.continue, { desc = 'Start/Continue Debugging' })
      vim.keymap.set('n', '<F2>', dap.step_over, { desc = 'Step Over' })
      vim.keymap.set('n', '<F3>', dap.step_into, { desc = 'Step Into' })
      vim.keymap.set('n', '<F4>', dap.step_out, { desc = 'Step Out' })
      vim.keymap.set('n', '<Leader>b', dap.toggle_breakpoint, { desc = 'Toggle Breakpoint' })
      vim.keymap.set('n', '<Leader>B', function()
        dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
      end, { desc = 'Set Conditional Breakpoint' })
      vim.keymap.set('n', '<Leader>dr', dap.repl.open, { desc = 'Open Debugger REPL' })
      vim.keymap.set('n', '<Leader>dl', dap.run_last, { desc = 'Run Last Debugging Session' })

      -- Open/Close DAP UI automatically
      dap.listeners.after.event_initialized['dapui_config'] = function()
        require('dapui').open()
      end
      dap.listeners.before.event_terminated['dapui_config'] = function()
        require('dapui').close()
      end
      dap.listeners.before.event_exited['dapui_config'] = function()
        require('dapui').close()
      end
    end,
  },
}

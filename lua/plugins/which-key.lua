local M = {}

function M.setup()
  require('which-key').setup({
    delay = 0,

    spec = {
      { '<leader>d', group = '[D]iagnostics / Delete', mode = { 'n', 'x' } },
      { '<leader>f', group = '[F]ind / Format' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>s', group = '[S]ubstitute / Split', mode = { 'n', 'v' } },
      { '<leader>t', group = '[T]ab' },
    },
  })
end

return M

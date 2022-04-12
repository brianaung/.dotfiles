require 'mini.surround'.setup({
    n_lines = 20,

    highlight_duration = 500,

    funname_pattern = '[%w_%.]+',

    mappings = {
      add = 'sa',           -- Add surrounding
      delete = 'sd',        -- Delete surrounding
      find = 'sf',          -- Find surrounding (to the right)
      find_left = 'sF',     -- Find surrounding (to the left)
      highlight = 'sh',     -- Highlight surrounding
      replace = 'sr',       -- Replace surrounding
      update_n_lines = 'sn' -- Update `n_lines`
    }
})

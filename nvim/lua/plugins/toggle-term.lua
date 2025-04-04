return
{
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    open_mapping = [[<A-i>]],
    direction = 'float',
    float_opts = {
    border = 'single', -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
    winblend = 3,
    title_pos = 'left' -- 'left' | 'center' | 'right', position of the title of the floating window
  }
  }
}

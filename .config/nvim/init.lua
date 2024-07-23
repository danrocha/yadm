-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- folding
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldmethod = "expr"

-- Jump to last edit position on opening file
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    if mark[1] > 1 and mark[1] <= vim.api.nvim_buf_line_count(0) then
      vim.api.nvim_win_set_cursor(0, mark)
    end
  end,
})

-- spell checking
vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- mouse
vim.opt.mouse = "a"

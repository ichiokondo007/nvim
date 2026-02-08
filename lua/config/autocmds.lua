-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_user_command("DiffOrig", function()
  local buf = vim.api.nvim_get_current_buf()
  vim.cmd("vertical new")
  vim.bo.buftype = "nofile"
  vim.bo.bufhidden = "wipe"
  local filename = vim.api.nvim_buf_get_name(buf)
  if filename ~= "" then
    vim.cmd("read " .. vim.fn.fnameescape(filename))
    vim.api.nvim_buf_set_lines(0, 0, 1, false, {})
  end
  vim.bo.filetype = vim.bo[buf].filetype
  vim.cmd("diffthis")
  vim.cmd("wincmd p")
  vim.cmd("diffthis")
end, { desc = "Diff current buffer with the file on disk" })

vim.api.nvim_create_user_command("Diff", "DiffOrig", {})

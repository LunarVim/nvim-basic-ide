local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
  vim.notify("Failed to load indent_blankline", "error")
  return
end

indent_blankline.setup {
  char = "▏",
  show_trailing_blankline_indent = false,
  show_first_indent_level = true,
  use_treesitter = true,
  show_current_context = true,
  buftype_exclude = { "terminal", "nofile" },
  filetype_exclude = {
    "help",
    "packer",
    "NvimTree",
  },
}

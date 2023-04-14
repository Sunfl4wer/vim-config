local status_ok, vimgo = pcall(require, "vim-go")
if not status_ok then
	return
end

local gConfigs = {
  go_diangistics_enabled = 0,
  go_metalinter_enabled = "[]",
  go_jump_to_error = 0,
  go_fmt_command = "goimports",
  go_auto_sameids = 0,
  go_highlight_types = 1,
  go_highlight_fields = 1,
  go_highlight_functions = 1,
  go_highlight_function_calls = 1,
  go_highlight_operators = 1,
  go_highlight_extra_types = 1,
  go_highlight_build_constraints = 1,
  go_highlight_generate_tags = 1
}

for k,v in pairs(gConfigs) do
  vim.g.k = v
end

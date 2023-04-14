local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
[[            .,ad8888888baa,]],
[[        ,d8P"""        ""988ba.]],
[[      .a8"          ,d88888888888a]],
[[     aP'          ,8888888888888888a]],
[[   ,8"           ,8888888888888888888,]],
[[  ,8'            (88888888( )888888888,]],
[[ ,8'             `88888888888888888888]],
[[(8                "8888888888888888888)]],
[[(8                 `8888888888888888888)]],
[[(8                  "88888888888888888)]],
[[ (b                     "8888888888888']],
[[ `8,        (8)          888888888888)]],
[[  "8a                   ,88888888888)]],
[[    V8,                 d8888888888"]],
[[     `8b,             ,d888888888P']],
[[        `V8a,       ,ad888888888P']],
[[           888888888888888P"]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "Birds don't fly, they are flown by the wind.\nFish don't swim, they are carried by the water."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)

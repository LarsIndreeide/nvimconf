local M = {}

local cache_file = vim.fn.stdpath("data") .. "/colorscheme.txt"

function M.save(name)
	local file = io.open(cache_file, "w")
	if file then
		file:write(name)
		file:close()
	end
end

function M.load()
	local file = io.open(cache_file, "r")
	if not file then
		return nil
	end
	local name = file:read("*l")
	file:close()
	return name
end

function M.setup()
	local saved = M.load()
	local ok = false
	if saved then
		ok = pcall(vim.cmd.colorscheme, saved)
	end
	if not ok then
		vim.cmd.colorscheme("habamax")
	end

	-- Persist any future colorscheme change automatically —
	-- covers Telescope picker, :colorscheme command
	vim.api.nvim_create_autocmd("ColorScheme", {
		callback = function(args)
			M.save(args.match)
		end,
	})
end

return M

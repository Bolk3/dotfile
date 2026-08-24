local M = {}
local env_path = vim.fn.stdpath("config") .. "/.env"
local cache = nil

local function load()
	local env = {}
	local f = io.open(env_path, "r")
	if not f then
		return env
	end

	local content = f:read("*a") -- déclaré AVANT le bloc, plus dans le if
	f:close()

	for line in content:gmatch("[^\r\n]+") do
		local trimmed = line:match("^%s*(.-)%s*$")
		if trimmed ~= "" and not trimmed:match("^#") then
			local key, value = trimmed:match("^([%w_-]+)%s*=%s*(.*)$")
			if key then
				value = value:gsub('^"(.*)"$', "%1"):gsub("^'(.*)'$", "%1")
				env[key] = value
			end
		end
	end

	return env
end

function M.get(key, default)
	if not cache then
		cache = load()
	end
	local value = cache[key]
	if value == nil then
		return default
	end
	return value
end

return M

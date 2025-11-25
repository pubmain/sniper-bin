local GH_REPO_OWNER = "pubmain"
local GH_REPO = "sniper-bin"

local http_service = game:GetService("HttpService")
local players = game:GetService("Players")
local local_player = players.LocalPlayer
local library: AnkaUi = nil
do
	local callback, err =
		loadstring(game:HttpGet("https://raw.githubusercontent.com/nfpw/XXSCRIPT/main/Library/Module.lua"), "AnkaUi")
	if not callback then
		return local_player:Kick(`failed to load AnkaUi\n{err}`)
	end
	library = callback()
end

type File = {
	name: string,
	path: string,
	download_url: string,
}
local function get_files(): { File }
	local URL = `https://api.github.com/repos/{GH_REPO_OWNER}/{GH_REPO}/contents/`
	local json = game:HttpGet(URL)
	local files = http_service:JSONDecode(json) :: { File }
	for index, file in files do
		if file.name:find("Loader") or file.name == "README.md" or not file.name:find("%.lua") then
			table.remove(files, index)
		end
	end
	return files
end

local function get_update(path: string): { [string]: any }
	local URL = `https://api.github.com/repos/{GH_REPO_OWNER}/{GH_REPO}/commits?path={path}&per_page=1`
	local json = game:HttpGet(URL)
	setclipboard(json)
	return http_service:JSONDecode(json)[1]
end

local window = library:CreateWindow({
	WindowName = "Sniper Hub",
}, gethui())

local main = window:CreateTab("main")
local loader = main:CreateSection("loader")
local script_info: Section?
local load_script: Button?

loader:CreateButton("join discord server", function()
	setclipboard("https://discord.gg/tH42ChWwCp")
	window:Notify("Sniper", "copied discord server link")
end)
loader:CreateButton("unload", function()
	local success, error = pcall(function(...)
		library:Destroy()
	end)
	if not success then
		library:Notify("Sniper", "failed to unload loader")
		warn("failed to unload loader", error)
	end
end)

local success, files = pcall(get_files)
if not success then
	window:Notify("Sniper", `failed to fetch scripts\n{files}`)
	return
end
local file_map = {}
for index, file in files do
	local new_name = file.name:gsub("%.luau", ""):gsub("%.lua", "")
	-- nice check
	if file.name == new_name then
		table.remove(files, index)
		continue
	end
	file.name = new_name
	file_map[file.name] = file
	files[index] = new_name
end

if #files == 0 then
	loader:CreateLabel("no scripts found")
else
	loader:CreateDropdown("games", files, function(selected_file: string)
		local file = file_map[selected_file]
		if load_script then
			load_script:Destroy()
		end

		load_script = loader:CreateButton("load", function()
			window:Notify("Sniper", `loading {file.name}`)
			local success, data = pcall(function()
				return game:HttpGet(file.download_url)
			end)
			if not success then
				return window:Notify("Sniper", `failed to get file\n{data}`)
			end
			local callback, err = loadstring(data, `Sniper`)
			if not callback then
				err = err:gsub(".+:%d+: ", "")
				local InvalidCharPos = #err
				for i = 1, #err do
					local Character = err:byte(i, i)
					if Character < 32 or Character > 126 then
						InvalidCharPos = i - 1
						break
					end
				end
				err = err:sub(1, InvalidCharPos)
				return window:Notify("Sniper", `failed to load script\n{err}`)
			end
			success, err = pcall(callback)
			if not success then
				err = err:gsub(".+:%d+: ", "")
				return window:Notify("Sniper", `failed to run script\n{err}`)
			end
			window:Notify("Sniper", `succesfully loaded {file.name}`)
			window:Toggle(false)
			task.wait(5)
			success, err = pcall(function(...)
				library:Destroy()
			end)
			if not success then
				library:Notify("Sniper", "failed to unload loader")
				warn("failed to unload loader", err)
			end
			return
		end)
		local update = get_update(file.path)
		if not update then
			return window:Notify("Sniper", "failed to fetch commit information")
		end

		if script_info then
			script_info:Destroy()
		end
		script_info = main:CreateSection("info")
		local last_updated_at = script_info:CreateTextBox(
			"last updated at",
			update.commit.author.date,
			false,
			function() end,
			true
		)
		last_updated_at:SetValue(update.commit.author.date)
		last_updated_at:ToggleInput()
		local updated_by = script_info:CreateTextBox(
			"updated by",
			update.commit.author.name,
			false,
			function() end,
			true
		)
		updated_by:ToggleInput()
		updated_by:SetValue(update.commit.author.name)
		return
	end)
end

local GH_REPO_OWNER = `pubmain`
local GH_REPO = `sniper-bin`
local DISCORD_INVITE = `discord.gg/tH42ChWwCp`
local SCRIPT_TIMEOUT = 5

local UserInputService = game:GetService(`UserInputService`)
local HttpService = game:GetService(`HttpService`)
local Library: AnkaUi = assert(
	loadstring(game:HttpGet(`https://raw.githubusercontent.com/nfpw/XXSCRIPT/main/Library/Module.lua`), `=Anka`),
	"Failed to compile Anka"
)()
getgenv().Anka = nil

local ExecutorName = identifyexecutor()
if ExecutorName == `Solara` or ExecutorName == `Xeno` then
	Library:Notify(`Sniper Hub`, `{ExecutorName} is not supported`)
	task.delay(15, Library.Destroy, Library)
	return
end

type File = {
	name: string,
	path: string,
	download_url: string,
}

local function GetFiles(): { File }
	local JSONData = game:HttpGet(`https://api.github.com/repos/{GH_REPO_OWNER}/{GH_REPO}/contents/`)
	local Files = HttpService:JSONDecode(JSONData) :: { File }
	local FilteredFiles = {}
	for _, File in ipairs(Files) do
		if File.type == `file` then
			local name = File.name
			if not name:find(`Loader`) and name:find(`%.lua`) then
				table.insert(FilteredFiles, File)
			end
		end
	end
	return FilteredFiles
end

local function GetUpdateInformation(path: string): { [string]: any }
	return HttpService:JSONDecode(
		game:HttpGet(
			`https://api.github.com/repos/{GH_REPO_OWNER}/{GH_REPO}/commits?path={HttpService:UrlEncode(path)}&per_page=1`
		)
	)[1]
end

local Window = Library:CreateWindow({
	Color = Color3.fromRGB(128, 128, 128),
	Keybind = Enum.KeyCode.End,
	WindowName = `Sniper Hub | Loader`,
}, gethui())

local MainTab = Window:CreateTab(`Sniper Hub`)
local LoaderSection = MainTab:CreateSection(`Loader`)
local ScriptInfoSection: Section?
local LoadScriptButton: Button?

LoaderSection:CreateLabel(`Join Sniper Hub Discord Server!`)
LoaderSection:CreateButton(DISCORD_INVITE, function()
	setclipboard(DISCORD_INVITE)
	Library:Notify(`Sniper Hub`, `Copied discord invite link`)
end)

LoaderSection:CreateButton(`Exit Loader`, function()
	local Success, Status = pcall(function(...)
		Window:Destroy()
	end)
	if not Success then
		Library:Notify(`Sniper Hub`, `Failed to unload loader. {Status}`)
	end
end)

local Success, Files = pcall(GetFiles)
if not Success then
	LoaderSection:CreateLabel(`Failed to fetch scripts. Maybe you got Rate-Limited, please try again later!`)
	LoaderSection:CreateLabel(Files)
	return
end

local FileMap = {}
local FileNames = {}
for Index, File in Files do
	local CleanFileName = File.name:gsub(`%.luau`, ``):gsub(`%.lua`, ``)
	if CleanFileName ~= File.name then
		FileMap[CleanFileName] = File
		File.name = CleanFileName
		FileNames[Index] = File.name
	end
end
if #Files == 0 then
	LoaderSection:CreateLabel(`No scripts found`)
	return
end
LoaderSection:CreateDropdown(`Scripts`, FileNames, function(SelectedFile: string)
	local File = FileMap[SelectedFile]
	if LoadScriptButton then
		LoadScriptButton:Destroy()
	end

	LoadScriptButton = LoaderSection:CreateButton(`Load Script`, function()
		Library:Notify(`Sniper Hub`, `Loading {File.name}`)
		local Success, Script = pcall(function()
			return game:HttpGet(File.download_url)
		end)
		if not Success then
			return Library:Notify(`Sniper Hub`, `Failed to download script. {Script}`)
		end

		local IronBrewObfuscated = Script:find(`ironbrew1`) ~= nil

		local Callback, CompilationError = loadstring(Script, `=Sniper`)
		if not Callback then
			return Library:Notify(`Sniper Hub`, `Failed to load script. {CompilationError}`)
		end
		
		if IronBrewObfuscated then
			-- vm compression temporary fix
			local OriginalLoadstring = loadstring
			local Loadstring = newcclosure(function(source, chunkname)
				return OriginalLoadstring(source, chunkname or `=Sniper`)
			end)
			getfenv(Callback).load = Loadstring
			getfenv(Callback).loadstring = Loadstring
			-- bit lib fix
			if UserInputService:GetPlatform() == Enum.Platform.OSX then
				local fenv = getfenv(Callback)
				fenv.bit = nil
				fenv.bit32 = nil
			end
		end

		local ScriptTimeoutThread = task.delay(SCRIPT_TIMEOUT, function()
			Library:Notify(
				`Sniper Hub`,
				`Failed to load script after {SCRIPT_TIMEOUT} seconds.\nAre you in the right place? If so please report it with a screenshot of the console.`
			)
		end)

		local Executed, RuntimeError = pcall(Callback)
		if not Executed then
			return Library:Notify(`Sniper Hub`, `Failed to execute script. {RuntimeError}`)
		end
		task.cancel(ScriptTimeoutThread)

		setthreadidentity(8)
		Window:Toggle(false)
		Library:Notify(`Sniper Hub`, `Succesfully loaded {File.name}`, 5)
		task.delay(5, Library.Destroy, Library)
		return
	end)

	local UpdateInformation = GetUpdateInformation(File.path)
	if not UpdateInformation then
		return Library:Notify(`Sniper Hub`, `Failed to fetch script info`)
	end

	if ScriptInfoSection then
		ScriptInfoSection:Destroy()
	end

	ScriptInfoSection = MainTab:CreateSection(`Script info`)
	-- lsp tuff!
	if not ScriptInfoSection then
		return
	end

	local LastUpdatedAt = ScriptInfoSection:CreateTextBox(
		`Updated at`,
		UpdateInformation.commit.author.date,
		false,
		function() end,
		true
	)
	LastUpdatedAt:SetValue(UpdateInformation.commit.author.date)
	LastUpdatedAt:ToggleInput()

	local UpdateBy = ScriptInfoSection:CreateTextBox(
		`Updated by`,
		UpdateInformation.commit.author.name,
		false,
		function() end,
		true
	)
	UpdateBy:ToggleInput()
	UpdateBy:SetValue(UpdateInformation.commit.author.name)
	return
end)

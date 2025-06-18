local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Luna-Interface-Suite/refs/heads/main/source.lua", true))() -- create luna
local Window = Luna:CreateWindow({
    Name = "Kagu Hub | Dead Rails 1.0.0",
    Subtitle = nil,
    LogoID = "82795327169782",
    LoadingEnabled = true,
    LoadingTitle = "Loading..",
    LoadingSubtitle = "by Kaguyaa1",
    ConfigSettings = {
        RootFolder = nil,
        ConfigFolder = "Kagu Hub"
    },
})
Window:CreateHomeTab({
    SupportedExecutors = {},
    DiscordInvite = "AkWWsyw2eG",
    Icon = 1,
})

local Main = Window:CreateTab({
	Name = "Main",
	Icon = "view_in_ar",
	ImageSource = "Material",
	ShowTitle = true
})

local AutoFarm = Main:CreateToggle({ -- toggles
	Name = "Auto Farm Coins",
	Description = nil,
	CurrentValue = false,
    	Callback = function(Value)
            AutoHeal = Value
        end
}, "Toggle") 
local Label = Main:CreateLabel({
	Text = "Label Example",
	Style = 1 -- Luna Labels Have 3 Styles : A Basic Label, A Green Information Label and A Red Warning Label. Look At The Following Image For More Details
})
local Paragraph = Main:CreateParagraph({
	Title = "Paragraph Example ",
	Text = "This Is A Paragraph. You Can Type Very Long Strings Here And They'll Automatically Fit! This Counts As A Description Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Right? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text? Also Did I Mention This Has Rich Text?"
})
local Button = Main:CreateButton({ -- button
	Name = "Kill All",
	Description = nil, 
    	Callback = function()
            print("trying kill me")
    	end
})
local Input = Main:CreateInput({
	Name = "Dynamic Input Example",
	Description = nil,
	PlaceholderText = "Input Placeholder",
	CurrentValue = "", -- the current text
	Numeric = false, -- When true, the user may only type numbers in the box (Example walkspeed)
	MaxCharacters = nil, -- if a number, the textbox length cannot exceed the number
	Enter = false, -- When true, the callback will only be executed when the user presses enter.
    	Callback = function(Text)
			print(Text)
    	end
}, "Input") 
local Slider = Main:CreateSlider({ -- slider
	Name = "Slider Example",
	Range = {0, 200},
	Increment = 5, 
	CurrentValue = 100, 
    	Callback = function(Value)
		
    	end
}, "Slider") 
local Dropdown = Main:CreateDropdown({
	Name = "Dropdown Example",
    	Description = nil,
		Options = {"Option 1","Option 2"},
    	CurrentOption = {"Option 1"},
    	MultipleOptions = false,
    	SpecialType = nil,
    	Callback = function(Options)
			print(CurrentOption)
	end
}, "Dropdown") 
local Bind = Main:CreateBind({
	Name = "Bind Example",
	Description = nil,
	CurrentBind = "Q", 
	HoldToInteract = false, 
    	Callback = function(BindState)
     	 -- The function that takes place when the keybind is pressed
     	 -- The variable (BindState) is a boolean for whether the Bind is being held or not (HoldToInteract needs to be true) OR it is whether the Bind is active
    	end,

	OnChangedCallback = function(Bind)
	 -- The function that takes place when the binded key changes
	 -- The variable (Bind) is a Enum.KeyCode for the new Binded Key
	end,
}, "Bind") 
local Settings = Window:CreateTab({
	Name = "Main",
	Icon = "view_in_ar",
	ImageSource = "settings",
	ShowTitle = true
})
Luna:Notification({ 
	Title = "Luna Notification Example",
	Icon = "notifications_active",
	ImageSource = "Material",
	Content = "This Is A Preview Of Luna's Dynamic Notification System Entailing Estimated/Calculated Wait Times, A Sleek Design, Icons, And A Glassmorphic Look"
})
Main:BuildConfigSection() -- config
Settings:BuildThemeSection() -- Theme
Luna:LoadAutoloadConfig() -- autoload

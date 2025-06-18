# Preview
![image](https://github.com/user-attachments/assets/ef3a0898-a219-4082-b703-09c9664ab54a)
## Documentation
### Loadstring
```lua
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/teppyboy/RbxScripts/master/Misc/UI_Libraries/Zypher/Library.lua"))()
```
### Themes
```html
library:SetThemeColor(<string>, <Color3>)
```
##### Default
```lua
local Themes = {
	Background = Color3.fromRGB(46, 46, 54),
	GrayContrast = Color3.fromRGB(39, 38, 46),
	DarkContrast = Color3.fromRGB(29, 29, 35),
	TextColor = Color3.fromRGB(255,255,255),
	SectionContrast = Color3.fromRGB(39,38,46),
	DropDownListContrast = Color3.fromRGB(34, 34, 41),
	CharcoalContrast = Color3.fromRGB(21,21,26),
}
```

##### Example
```lua
library:SetThemeColor("Background", Color3.new(1, 1, 1))
```


### Window
```lua
local main = library:CreateMain({
    projName = "UILib", -- Name
    Resizable = true, -- Resize
    MinSize = UDim2.new(0,400,0,400), -- Minimum size
    MaxSize = UDim2.new(0,750,0,500), -- Maximum size
})
```
### Category
```lua
local category = main:CreateCategory("Category") -- <string, categoryName>
```
### Section
```lua
local section = category:CreateSection("Section") -- <string, sectionName>
```

###  Create
Here is a list of interactables you can add to your section.
```
Button, Toggle, Slider, Textlabels, Textbox, Dropdown, Keybind, Colorpicker
```
```html
section:Create(
    <string, interactableType>,
    <string, interactableName>,
    <function>,
    <options>
)
```
### Label
```lua
section:Create(
    "Textlabel",
    "Hi, text here!"
)
```
### Button
```lua
section:Create(
    "Button",
    "Button",
    function()
        print("button pressed")
    end,
    {
        animated = true,
    }
)
```
### Toggle
```lua
section:Create(
    "Toggle",
    "Toggle",
    function(state)
        print("Current state:", state)
    end,
    {
        default = true,
    }
)
```
### Slider
```lua
section:Create(
    "Slider",
    "Slider",
    function(value)
        print(value)
    end,
    {
        min = 0,
        max = 5,
        -- Optional
        default = 2,
        precise = true, -- ex: 0.1, 0.2, 0.3
        changablevalue = true
    }
)
```
### TextBox
```lua
section:Create(
    "TextBox",
    "TextBox",
    function(input)
        print("Input changed to:", input)
    end,
    {
        text = "I am a textbox"
    }
)
```
### Keybind
```lua
section:Create(
    "KeyBind",
    "KeyBind", 
    function()
        print("Key pressed")
    end,
    {
        default = Enum.KeyCode.K
    }
)
```
### DropDown
```lua
section:Create(
    "DropDown",
    "DropDown", 
    function(current)
        print("Selected to:", current)
    end,
    {
        options = {
            "First",
            "Second",
            "Third",
            "4th",
            "5th",
            "6th"
        },
         -- Optional
        default = "First",
        search = true
    }
)
```

#### SetDropDownList & GetDropDownList
```lua
local dropdown = section:Create(
    "DropDown",
    "DropDown", 
    function(current)
        print("Selected to:", current)
    end,
    {
        options = {"Apple","Banana","Coconut",},
         -- Optional
        default = "Apple",
        search = true
    }
)

dropdown:SetDropDownList({"Dog", "Cat", "Monkey"})

dropdown:GetDropDownList() -- Return table of options
```

### ColorPicker
```lua
section:Create(
    "ColorPicker",
    "ColorPicker",
    function(color)
        print("Current color:", color)
    end,
    {
        default = Color3.fromRGB(255,255,255)
    }
)
```
### Applying Custom Themes / Colors
```lua
local Themes = {
	Background = Color3.fromRGB(46, 46, 54),
	GrayContrast = Color3.fromRGB(39, 38, 46),
	DarkContrast = Color3.fromRGB(29, 29, 35),
	TextColor = Color3.fromRGB(255,255,255),
	SectionContrast = Color3.fromRGB(39,38,46),
	DropDownListContrast = Color3.fromRGB(34, 34, 41),
	CharcoalContrast = Color3.fromRGB(21,21,26),
}

for ColorsName, Value in next, Themes do
    section:Create(
        "ColorPicker",
        ColorsName,
        function(colors)
            Value = colors
            library:SetThemeColor(ColorsName, colors)
        end,
        {
            default = Value
        }
    )
end
```

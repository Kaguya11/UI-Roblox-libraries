
local Lib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/Hosvile/Refinement/main/Infinix%20Library/UI-th%20Library%20v0.0.1"),true))()
--Hello, this is my UI Library that i made almost entirely out of Mobile only, I don't have a computer.
--I made this UI Library to be very adjustable without needing to go through the source itself.
--Use syntax for easier understanding



Lib:CreateWindow("InfiniX.Lib") --Creates the Window




local Tab_1 = Lib:CreateTab("Developing") --Creates a Tab
local Tab_2 = Lib:CreateTab("Property") --Another created Tab




-- Below this is the Keybind/Description, very complicated, just ignore it.
local SavedKey = false
local TestKey




-- sgui = ScreenGui returned
-- btn = Button returned
local Description,Keybind = {
    function(sgui,btn) --Cancel Button
    sgui:Destroy() 
    end,
    function(sgui,btn) --Discard Button
    SavedKey = nil
    end,
    function(sgui,btn) --Save Button
    SavedKey = TestKey
    sgui:Destroy()
    end,
    function(sgui,btn) --Title
    btn.Text = "Keybind"
    end,
    function(sgui,btn) --Header
    if not SavedKey then
    TestKey = nil
    btn.Text = "Select a Key"
    else
        task.spawn(function()
        while SavedKey do
        wait()
        btn.Text = "Selected Key = "..tostring(SavedKey)
        end
        end)
    end
    local UIS = game:GetService('UserInputService')
    local bool = true
    UIS.InputBegan:Connect(function(input)
        local En = Enum.KeyCode
        if input.KeyCode ~= En.Unknown and bool == true then
        TestKey = input.KeyCode
        bool = false
        end
        end)
    while not TestKey do wait() end
    task.spawn(function()
        while TestKey do
        wait()
        btn.Text = "Selected key = "..tostring(TestKey)
        end
        end)
    end,
    function() --KeyCode to return
    while not TestKey and not SavedKey do wait() end
    return SavedKey
    end
},Description
-- End of the Keybind/Description.




Tab_1:CreateButton("Name of Button",function() -- Self explanatory, imagine not understanding this.
print("Hello, this is a Button")
end,Description or Keybind)




Tab_1:CreateToggle("Name of Toggle",false --[[Default bool]],function(bool) --"bool" is the boolean it returns when clicked, true or false.
    print(bool,"was returned from Toggle")
end,Description or Keybind)




Tab_1:CreateDropdown("Name of Dropdown",{"options","of","string"},function(chosen) --"chosen" is the returned string of the option clicked
    print(chosen,"was returned from Dropdown")
    end,Description or Keybind)




Tab_1:CreateSlider("Name of Slider",1,1000,function(value)
    print(value,"was returned from Slider")
end,
false -- if value should be returned while sliding.
,Description or Keybind)



Tab_1:CreateTextbox("Name of Textbox", function(text) --"text" is what you typed into the Textbox and executed.
    print(text,"was returned from Textbox")
end,Description or Keybind)




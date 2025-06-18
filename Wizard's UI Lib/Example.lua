local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Window = Library:NewWindow("Name")
local Tab = Window:NewSection("My Tab")
Tab:CreateButton("Button", function()

print("hello")

end)
Tab:CreateTextbox("TextBox", function(text)

        print(text)

end)
Tab:CreateDropdown("DropDown", {"Hello", "World", "Hello World"}, 2, function(text)

print(text)

end)
Tab:CreateSlider("Slider", 0, 100, 15, false, function(value)

print(value)

end)
Tab:CreateColorPicker("Picker", Color3.new(255, 255, 255), function(value)

print(value)

end)
Tab:CreateToggle("Toggle", function(value)

print(value)

end)

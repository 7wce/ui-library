local seere = loadstring(game:HttpGet("https://raw.githubusercontent.com/7wce/ui-library/refs/heads/main/seere.lua"))()
local seereWindow = seere:window()

seereWindow:name("Kitty Hub")

local InsaneTab = seereWindow:addTab("Insane!!")
local KittyGroup = InsaneTab:createGroup("left", "Kitties") -- Left, Center, Right

KittyGroup:addText({
	text = "Hello kitties!! :3\n<font size=\"20\">How are you? :3</font>"
})

KittyGroup:addList({
	values = {
		"Kitty 1",
		"Kitty 2"
	},
	flag = "Choose a kitty",
	multiselect = false,
	value = 1, -- For multiselect >> {1},
	callback = function(returnedKitty)
		print(("you chose %s!"):format(returnedKitty))
	end,
})

KittyGroup:addKeybind({
	flag = "kittybind",
	text = "Kitty Notifier",
	key = Enum.KeyCode.K,
	callback = function(keybind)
		print(keybind.Name)
		seereWindow:notify({
			title = "Helloo!!",
			text = "kitty cat",
			duration = 5
		})
	end,
})

KittyGroup:addSlider({
	text = "Kitty spawner",
	flag = "kitties",
	min = 1,
	max = 5,
	value = 1,
	callback = function(kittyvalue)
		print(kittyvalue .. " cat")
	end,
}, "/5")

KittyGroup:addColorpicker({
	text = "Kitty Color",
	flag = "kittycolor",
	color = Color3.fromRGB(255, 0, 136),
	callback = function(kittycolor)
		print(kittycolor)
	end,
})

KittyGroup:addTextbox({
	text = "Kitty Name",
	flag = "kittyname",
	value = "hi :3",
	callback = function(new)
		print(new)
	end,
})

KittyGroup:addToggle({
	flag = "enablekitties",
	text = "Enable Kitties",
	default = true,
	callback = function(enabled)
		print(enabled)
	end,
})

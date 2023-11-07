if game.PlaceId == 14288176792 or game.PlaceId == 15030260251 then

if game.CoreGui:FindFirstChild("SOMEXHUBMODILE") then
    game.CoreGui:FindFirstChild("SOMEXHUBMODILE"):Destroy()
end

if game.CoreGui:FindFirstChild("SOMEXHUBMODILE") then
    game.CoreGui:FindFirstChild("SOMEXHUBMODILE"):Destroy()
end

local SOMEXHUBMODILE = Instance.new("ScreenGui")
local MODILEGUISOMEXHUB = Instance.new("TextButton")
local MODILEGUISOMEXHUBHUI = Instance.new("UICorner")
local MODILEMAGE = Instance.new("ImageLabel")

SOMEXHUBMODILE.Name = "SOMEXHUBMODILE"
        SOMEXHUBMODILE.Parent = game.CoreGui
        SOMEXHUBMODILE.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        MODILEGUISOMEXHUB.Name = "MODILEGUISOMEXHUB"
        MODILEGUISOMEXHUB.Parent = SOMEXHUBMODILE
        MODILEGUISOMEXHUB.BackgroundColor3 = Color3.fromRGB(30,20,20)
        MODILEGUISOMEXHUB.BorderSizePixel = 0
        MODILEGUISOMEXHUB.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
        MODILEGUISOMEXHUB.Size = UDim2.new(0, 50, 0, 50)
        MODILEGUISOMEXHUB.Font = Enum.Font.SourceSans
        MODILEGUISOMEXHUB.Text = ""
        MODILEGUISOMEXHUB.TextColor3 = Color3.fromRGB(0, 0, 0)
        MODILEGUISOMEXHUB.TextSize = 14.000
        MODILEGUISOMEXHUB.Draggable = true
        MODILEGUISOMEXHUB.MouseButton1Click:Connect(function()
        game.CoreGui:FindFirstChild("SOMEXHUB").Enabled = not game.CoreGui:FindFirstChild("SOMEXHUB").Enabled
        end)
        do
        if game:GetService("CoreGui"):FindFirstChild("SOMEXHUB") then
        end
        end

        MODILEGUISOMEXHUBHUI.Name = "MODILEGUISOMEXHUBHUI"
        MODILEGUISOMEXHUBHUI.Parent = MODILEGUISOMEXHUB

        MODILEMAGE.Name = "MODILEMAGE"
        MODILEMAGE.Parent = MODILEGUISOMEXHUB
        MODILEMAGE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MODILEMAGE.BackgroundTransparency = 1.000
        MODILEMAGE.BorderSizePixel = 0
        MODILEMAGE.Position = UDim2.new(0, 3, 0, 2)
        MODILEMAGE.Size = UDim2.new(0, 45, 0, 45)
        MODILEMAGE.Image = "http://www.roblox.com/asset/?id=15290644766"

do local GUI = game.CoreGui:FindFirstChild("SOMEXHUB");if GUI then GUI:Destroy();end;if _G.Color == nil then
       _G.Color = Color3.fromRGB(50,255,255)
   end 
end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
		local Tween = TweenService:Create(object, TweenInfo.new(0.15), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

local Update = {}

function Update:Window(text,logo,keybind)
	local uihide = false
	local abc = false
	local logo = logo or 0
	local currentpage = ""
	local keybind = keybind or Enum.KeyCode.RightControl
	local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")
	
	local SOMEXHUB = Instance.new("ScreenGui")
	SOMEXHUB.Name = "SOMEXHUB"
	SOMEXHUB.Parent = game.CoreGui
	SOMEXHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = SOMEXHUB
	Main.ClipsDescendants = true
	Main.AnchorPoint = Vector2.new(0.5,0.5)
	Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 0, 0, 0)
	
	Main:TweenSize(UDim2.new(0, 656, 0, 350),"Out","Quad",0.4,true)
	
	local Top = Instance.new("Frame")
	Top.Name = "Top"
	Top.Parent = Main
	Top.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Top.Size = UDim2.new(0, 656, 0, 27)
	
	local Name = Instance.new("TextLabel")
	Name.Name = "Name"
	Name.Parent = Top
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0.0609756112, -25, 0, 0)
	Name.Size = UDim2.new(0, 61, 0, 27)
	Name.Font = Enum.Font.GothamSemibold
	Name.Text = text
	Name.TextColor3 = Color3.fromRGB(225, 225, 225)
	Name.TextSize = 17.000

	local Hub = Instance.new("TextLabel")
	Hub.Name = "Hub"
	Hub.Parent = Top
	Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hub.BackgroundTransparency = 1.000
	Hub.Position = UDim2.new(0, 85, 0, 0)
	Hub.Size = UDim2.new(0, 81, 0, 27)
	Hub.Font = Enum.Font.GothamSemibold
	Hub.Text = "  HUB"
	    spawn(function()
            while wait() do
                pcall(function()
                    wait(0.1) 
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 0, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 155, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 255, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(0, 255, 0)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(0, 255, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(0, 155, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 0, 255)}
                    ):Play() 
                    wait(.5)            
                    game:GetService('TweenService'):Create(
                        Hub,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
                        {TextColor3 = Color3.fromRGB(255, 0, 155)}
                    ):Play() 
                    wait(.5)
                end)
            end
        end)
	Hub.TextSize = 17.000
	Hub.TextXAlignment = Enum.TextXAlignment.Left
	
	local Hubb = Instance.new("TextLabel")
	Hubb.Name = "Hubb"
	Hubb.Parent = Top
	Hubb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hubb.BackgroundTransparency = 1.000
	Hubb.Position = UDim2.new(0, 480, 0, 0)
	Hubb.Size = UDim2.new(0, 81, 0, 27)
	Hubb.Font = Enum.Font.GothamSemibold
	Hubb.Text = "Map|ConDL Piece"
	Hubb.TextColor3 = Color3.fromRGB(255, 255, 255)
	Hubb.TextSize = 17.000
	Hubb.TextXAlignment = Enum.TextXAlignment.Left

	local Tab = Instance.new("Frame")
	Tab.Name = "Tab"
	Tab.Parent = Main
	Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Tab.BackgroundTransparency = 1.000
	Tab.Position = UDim2.new(0, 5, 0, 30)
	Tab.Size = UDim2.new(0, 150, 0, 350)

local LogoHub = Instance.new("ImageLabel")
	LogoHub.Name = "LogoHub"
	LogoHub.Parent = Tab
	LogoHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoHub.BackgroundTransparency = 1.000
	LogoHub.Position = UDim2.new(0, 0, 0, 1)
	LogoHub.Size = UDim2.new(0, 150, 0, 150)
	LogoHub.Image = "http://www.roblox.com/asset/?id="..tostring(15290644766)

	local ScrollTab = Instance.new("ScrollingFrame")
	ScrollTab.Name = "ScrollTab"
	ScrollTab.Parent = Tab
	ScrollTab.Active = true
	ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollTab.BackgroundTransparency = 1.000
	ScrollTab.Size = UDim2.new(0, 150, 0, 365)
	ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollTab.ScrollBarThickness = 0

	local PLL = Instance.new("UIListLayout")
	PLL.Name = "PLL"
	PLL.Parent = ScrollTab
	PLL.SortOrder = Enum.SortOrder.LayoutOrder
	PLL.Padding = UDim.new(0, 15)

	local PPD = Instance.new("UIPadding")
	PPD.Name = "PPD"
	PPD.Parent = ScrollTab
	PPD.PaddingLeft = UDim.new(0, 10)
	PPD.PaddingTop = UDim.new(0, 10)

	local Page = Instance.new("Frame")
	Page.Name = "Page"
	Page.Parent = Main
	Page.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Page.Position = UDim2.new(0.245426834, 0, 0.075000003, 0)
	Page.Size = UDim2.new(0, 490, 0, 365)

	local MainPage = Instance.new("Frame")
	MainPage.Name = "MainPage"
	MainPage.Parent = Page
	MainPage.ClipsDescendants = true
	MainPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MainPage.BackgroundTransparency = 1.000
	MainPage.Size = UDim2.new(0, 490, 0, 365)

	local PageList = Instance.new("Folder")
	PageList.Name = "PageList"
	PageList.Parent = MainPage

	local UIPageLayout = Instance.new("UIPageLayout")

	UIPageLayout.Parent = PageList
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
	UIPageLayout.FillDirection = Enum.FillDirection.Vertical
	UIPageLayout.Padding = UDim.new(0, 15)
	UIPageLayout.TweenTime = 0.400
	UIPageLayout.GamepadInputEnabled = false
	UIPageLayout.ScrollWheelInputEnabled = false
	UIPageLayout.TouchInputEnabled = false
	
	MakeDraggable(Top,Main)

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode[yoo] then
			if uihide == false then
				uihide = true
				Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)
			else
				uihide = false
				Main:TweenSize(UDim2.new(0, 656, 0, 350),"Out","Quad",0.4,true)
			end
		end
	end)
	
	local uitab = {}
	
	function uitab:Tab(text,image)
	    local Image = image
	    
		local TabButton = Instance.new("TextButton")
		TabButton.Parent = ScrollTab
		TabButton.Name = text.."Server"
		TabButton.Text = text
		TabButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		TabButton.BackgroundTransparency = 0.150
		TabButton.Size = UDim2.new(0, 130, 0, 23)
		TabButton.Font = Enum.Font.GothamSemibold
		TabButton.TextColor3 = Color3.fromRGB(225, 225, 225)
		TabButton.TextSize = 15.000
		TabButton.TextTransparency = 0.500

            local PageImage = Instance.new("ImageLabel")
            PageImage.Name = "PageImage"
            PageImage.Parent = TabButton
            PageImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            PageImage.BackgroundTransparency = 1.000
            PageImage.Position = UDim2.new(0, 5, 0, 5)
            PageImage.Size = UDim2.new(0, 15, 0, 15)
            PageImage.Image = "rbxassetid://"..tostring(Image)
            
		local MainFramePage = Instance.new("ScrollingFrame")
		MainFramePage.Name = text.."_Page"
		MainFramePage.Parent = PageList
		MainFramePage.Active = true
		MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MainFramePage.BackgroundTransparency = 1.000
		MainFramePage.BorderSizePixel = 0
		MainFramePage.Size = UDim2.new(0, 490, 0, 365)
		MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
		MainFramePage.ScrollBarThickness = 0
		
		local UIPadding = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")
		
		UIPadding.Parent = MainFramePage
		UIPadding.PaddingLeft = UDim.new(0, 10)
		UIPadding.PaddingTop = UDim.new(0, 10)

		UIListLayout.Padding = UDim.new(0,15)
		UIListLayout.Parent = MainFramePage
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		
		TabButton.MouseButton1Click:Connect(function()
			for i,v in next, ScrollTab:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end
			for i,v in next, PageList:GetChildren() do
				currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
				if v.Name == currentpage then
					UIPageLayout:JumpTo(v)
				end
			end
		end)

		if abc == false then
			for i,v in next, ScrollTab:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end
			UIPageLayout:JumpToIndex(1)
			abc = true
		end
		
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
				ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
			end)
		end)
		
		local main = {}
		function main:Button(text,callback)
			local Button = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextBtn = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Black = Instance.new("Frame")
			local IMGTOG = Instance.new("ImageLabel")
			local UICorner_3 = Instance.new("UICorner")
			
			Button.Name = "Button"
			Button.Parent = MainFramePage
			Button.BackgroundColor3 = _G.Color
			Button.Size = UDim2.new(0, 470, 0, 31)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Button
			
			TextBtn.Name = "TextBtn"
			TextBtn.Parent = Button
			TextBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			TextBtn.Position = UDim2.new(0, 1, 0, 1)
			TextBtn.Size = UDim2.new(0, 468, 0, 29)
			TextBtn.AutoButtonColor = false
			TextBtn.Font = Enum.Font.GothamSemibold
			TextBtn.Text = text
			TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBtn.TextSize = 15.000
			
			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBtn
			
			Black.Name = "Black"
			Black.Parent = Button
			Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Black.BackgroundTransparency = 1.000
			Black.BorderSizePixel = 0
			Black.Position = UDim2.new(0, 1, 0, 1)
			Black.Size = UDim2.new(0, 468, 0, 29)
	        
			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = Black

			TextBtn.MouseEnter:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.7}
				):Play()
			end)
			TextBtn.MouseLeave:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 1}
				):Play()
			end)
			TextBtn.MouseButton1Click:Connect(function()
				TextBtn.TextSize = 0
				TweenService:Create(
					TextBtn,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextSize = 15}
				):Play()
				callback()
			end)
		end
		function main:Toggle(text,config,callback)
			config = config or false
			local toggled = config
			local Toggle = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Button = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Label = Instance.new("TextLabel")
			local ToggleImage = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local Circle = Instance.new("Frame")
			local IMGTOG = Instance.new("ImageLabel")
			local UICorner_4 = Instance.new("UICorner")

			Toggle.Name = "Toggle"
			Toggle.Parent = MainFramePage
			Toggle.BackgroundColor3 = _G.Color
			Toggle.Size = UDim2.new(0, 470, 0, 31)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Toggle

			Button.Name = "Button"
			Button.Parent = Toggle
			Button.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Button.Position = UDim2.new(0, 1, 0, 1)
			Button.Size = UDim2.new(0, 468, 0, 29)
			Button.AutoButtonColor = false
			Button.Font = Enum.Font.SourceSans
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextSize = 11.000

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = Button

			Label.Name = "Label"
			Label.Parent = Toggle
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Position = UDim2.new(0, 1, 0, 1)
			Label.Size = UDim2.new(0, 468, 0, 29)
			Label.Font = Enum.Font.GothamSemibold
			Label.Text = text
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 15.000

			ToggleImage.Name = "ToggleImage"
			ToggleImage.Parent = Toggle
			ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			ToggleImage.Position = UDim2.new(0, 415, 0, 5)
			ToggleImage.Size = UDim2.new(0, 45, 0, 20)

			UICorner_3.CornerRadius = UDim.new(0, 10)
			UICorner_3.Parent = ToggleImage

local tggc = Instance.new("TextLabel")
	tggc.Name = "tggc"
	tggc.Parent = Toggle
	tggc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tggc.BackgroundTransparency = 1.000
	tggc.Position = UDim2.new(0, 40, 0, 3)
	tggc.Size = UDim2.new(0, 81, 0, 27)
	tggc.Font = Enum.Font.GothamSemibold
    tggc.Text = "|"
	tggc.TextColor3 = _G.Color
	tggc.TextSize = 26.000
	tggc.TextXAlignment = Enum.TextXAlignment.Left

local LogoToggle = Instance.new("ImageLabel")
	LogoToggle.Name = "LogoToggle"
	LogoToggle.Parent = Toggle
	LogoToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoToggle.BackgroundTransparency = 1.000
	LogoToggle.Position = UDim2.new(0, 7, 0, 2)
	LogoToggle.Size = UDim2.new(0, 26, 0, 26)
	LogoToggle.Image = "http://www.roblox.com/asset/?id="..tostring(15290644766)

			Circle.Name = "Circle"
			Circle.Parent = ToggleImage
			Circle.BackgroundColor3 = Color3.fromRGB(227, 60, 60)
			Circle.Position = UDim2.new(0, 2, 0, 2)
			Circle.Size = UDim2.new(0, 16, 0, 16)

			UICorner_4.CornerRadius = UDim.new(0, 10)
			UICorner_4.Parent = Circle

			Button.MouseButton1Click:Connect(function()
				if toggled == false then
					toggled = true
					Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = _G.Color}
					):Play()
				else
					toggled = false
					Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(227, 60, 110)}
					):Play()
				end
				pcall(callback,toggled)
			end)

			if config == true then
				toggled = true
				Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)
				TweenService:Create(
					Circle,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundColor3 = _G.Color}
				):Play()
				pcall(callback,toggled)
			end
		end
		function main:Dropdown(text,option,callback)
			local isdropping = false
			local Dropdown = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local DropTitle = Instance.new("TextLabel")
			local DropScroll = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local UIPadding = Instance.new("UIPadding")
			local DropButton = Instance.new("TextButton")
			local DropImage = Instance.new("ImageLabel")
			
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = MainFramePage
			Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Dropdown.ClipsDescendants = true
			Dropdown.Size = UDim2.new(0, 470, 0, 31)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Dropdown
			
			DropTitle.Name = "DropTitle"
			DropTitle.Parent = Dropdown
			DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropTitle.BackgroundTransparency = 1.000
			DropTitle.Size = UDim2.new(0, 470, 0, 31)
			DropTitle.Font = Enum.Font.GothamSemibold
			DropTitle.Text = text.. " : "
			DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
			DropTitle.TextSize = 15.000
			
			DropScroll.Name = "DropScroll"
			DropScroll.Parent = DropTitle
			DropScroll.Active = true
			DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropScroll.BackgroundTransparency = 1.000
			DropScroll.BorderSizePixel = 0
			DropScroll.Position = UDim2.new(0, 0, 0, 31)
			DropScroll.Size = UDim2.new(0, 470, 0, 100)
			DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
			DropScroll.ScrollBarThickness = 3
			
			UIListLayout.Parent = DropScroll
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)
			
			UIPadding.Parent = DropScroll
			UIPadding.PaddingLeft = UDim.new(0, 5)
			UIPadding.PaddingTop = UDim.new(0, 5)
			
			DropImage.Name = "DropImage"
			DropImage.Parent = Dropdown
			DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropImage.BackgroundTransparency = 1.000
			DropImage.Position = UDim2.new(0, 435, 0, 6)
			DropImage.Rotation = 180.000
			DropImage.Size = UDim2.new(0, 20, 0, 20)
			DropImage.Image = "rbxassetid://15290644766"
			
			DropButton.Name = "DropButton"
			DropButton.Parent = Dropdown
			DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropButton.BackgroundTransparency = 1.000
			DropButton.Size = UDim2.new(0, 470, 0, 31)
			DropButton.Font = Enum.Font.SourceSans
			DropButton.Text = ""
			DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			DropButton.TextSize = 14.000

			for i,v in next,option do
				local Item = Instance.new("TextButton")

				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 460, 0, 26)
				Item.Font = Enum.Font.GothamSemibold
				Item.Text = tostring(v)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end

			DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

			DropButton.MouseButton1Click:Connect(function()
				if isdropping == false then
					isdropping = true
					Dropdown:TweenSize(UDim2.new(0,470,0,131),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 0}
					):Play()
				else
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
				end
			end)

			local dropfunc = {}
			function dropfunc:Add(t)
				local Item = Instance.new("TextButton")
				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 470, 0, 26)
				Item.Font = Enum.Font.GothamSemibold
				Item.Text = tostring(t)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end
			function dropfunc:Clear()
				DropTitle.Text = tostring(text).." : "
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,470,0,31),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = 180}
				):Play()
				for i,v in next, DropScroll:GetChildren() do
					if v:IsA("TextButton") then
						v:Destroy()
					end
				end
			end
			return dropfunc
		end

		function main:Slider(text,min,max,set,callback)
			local Slider = Instance.new("Frame")
			local slidercorner = Instance.new("UICorner")
			local sliderr = Instance.new("Frame")
			local sliderrcorner = Instance.new("UICorner")
			local SliderLabel = Instance.new("TextLabel")
			local HAHA = Instance.new("Frame")
			local AHEHE = Instance.new("TextButton")
			local bar = Instance.new("Frame")
			local bar1 = Instance.new("Frame")
			local bar1corner = Instance.new("UICorner")
			local barcorner = Instance.new("UICorner")
			local circlebar = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local slidervalue = Instance.new("Frame")
			local valuecorner = Instance.new("UICorner")
			local TextBox = Instance.new("TextBox")
			local UICorner_2 = Instance.new("UICorner")

			Slider.Name = "Slider"
			Slider.Parent = MainFramePage
			Slider.BackgroundColor3 = _G.Color
			Slider.BackgroundTransparency = 0
			Slider.Size = UDim2.new(0, 470, 0, 51)

			slidercorner.CornerRadius = UDim.new(0, 5)
			slidercorner.Name = "slidercorner"
			slidercorner.Parent = Slider

			sliderr.Name = "sliderr"
			sliderr.Parent = Slider
			sliderr.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			sliderr.Position = UDim2.new(0, 1, 0, 1)
			sliderr.Size = UDim2.new(0, 468, 0, 49)

			sliderrcorner.CornerRadius = UDim.new(0, 5)
			sliderrcorner.Name = "sliderrcorner"
			sliderrcorner.Parent = sliderr

			SliderLabel.Name = "SliderLabel"
			SliderLabel.Parent = sliderr
			SliderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderLabel.BackgroundTransparency = 1.000
			SliderLabel.Position = UDim2.new(0, 15, 0, 0)
			SliderLabel.Size = UDim2.new(0, 180, 0, 26)
			SliderLabel.Font = Enum.Font.GothamSemibold
			SliderLabel.Text = text
			SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			SliderLabel.TextSize = 16.000
			SliderLabel.TextTransparency = 0
			SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

			HAHA.Name = "HAHA"
			HAHA.Parent = sliderr
			HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			HAHA.BackgroundTransparency = 1.000
			HAHA.Size = UDim2.new(0, 468, 0, 29)

			AHEHE.Name = "AHEHE"
			AHEHE.Parent = sliderr
			AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AHEHE.BackgroundTransparency = 1.000
			AHEHE.Position = UDim2.new(0, 10, 0, 35)
			AHEHE.Size = UDim2.new(0, 448, 0, 5)
			AHEHE.Font = Enum.Font.SourceSans
			AHEHE.Text = ""
			AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
			AHEHE.TextSize = 14.000

			bar.Name = "bar"
			bar.Parent = AHEHE
			bar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			bar.Size = UDim2.new(0, 448, 0, 5)

			bar1.Name = "bar1"
			bar1.Parent = bar
			bar1.BackgroundColor3 = _G.Color
			bar1.BackgroundTransparency = 0
			bar1.Size = UDim2.new(set/max, 0, 0, 5)

			bar1corner.CornerRadius = UDim.new(0, 5)
			bar1corner.Name = "bar1corner"
			bar1corner.Parent = bar1

			barcorner.CornerRadius = UDim.new(0, 5)
			barcorner.Name = "barcorner"
			barcorner.Parent = bar

			circlebar.Name = "circlebar"
			circlebar.Parent = bar1
			circlebar.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			circlebar.Position = UDim2.new(1, -2, 0, -3)
			circlebar.Size = UDim2.new(0, 10, 0, 10)

			UICorner.CornerRadius = UDim.new(0, 100)
			UICorner.Parent = circlebar

			slidervalue.Name = "slidervalue"
			slidervalue.Parent = sliderr
			slidervalue.BackgroundColor3 = _G.Color
			slidervalue.BackgroundTransparency = 0
			slidervalue.Position = UDim2.new(0, 395, 0, 5)
			slidervalue.Size = UDim2.new(0, 65, 0, 18)

			valuecorner.CornerRadius = UDim.new(0, 5)
			valuecorner.Name = "valuecorner"
			valuecorner.Parent = slidervalue

			TextBox.Parent = slidervalue
			TextBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			TextBox.Position = UDim2.new(0, 1, 0, 1)
			TextBox.Size = UDim2.new(0, 63, 0, 16)
			TextBox.Font = Enum.Font.GothamSemibold
			TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBox.TextSize = 9.000
			TextBox.Text = set
			TextBox.TextTransparency = 0

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBox

			local mouse = game.Players.LocalPlayer:GetMouse()
			local uis = game:GetService("UserInputService")

			if Value == nil then
				Value = set
				pcall(function()
					callback(Value)
				end)
			end
			
			AHEHE.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
				pcall(function()
					callback(Value)
				end)
				bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
				circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
				moveconnection = mouse.Move:Connect(function()
					TextBox.Text = Value
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
					pcall(function()
						callback(Value)
					end)
					bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
					circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
						pcall(function()
							callback(Value)
						end)
						bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 448), 0, 5)
						circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 438), 0, -3)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)
			releaseconnection = uis.InputEnded:Connect(function(Mouse)
				if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
					Value = math.floor((((tonumber(max) - tonumber(min)) / 448) * bar1.AbsoluteSize.X) + tonumber(min))
					TextBox.Text = Value
				end
			end)

			TextBox.FocusLost:Connect(function()
				if tonumber(TextBox.Text) > max then
					TextBox.Text  = max
				end
				bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
				circlebar.Position = UDim2.new(1, -2, 0, -3)
				TextBox.Text = tostring(TextBox.Text and math.floor( (TextBox.Text / max) * (max - min) + min) )
				pcall(callback, TextBox.Text)
			end)
		end

		function main:Textbox(text,disappear,callback)
			local Textbox = Instance.new("Frame")
			local TextboxCorner = Instance.new("UICorner")
			local Textboxx = Instance.new("Frame")
			local TextboxxCorner = Instance.new("UICorner")
			local TextboxLabel = Instance.new("TextLabel")
			local txtbtn = Instance.new("TextButton")
			local RealTextbox = Instance.new("TextBox")
			local UICorner = Instance.new("UICorner")

			Textbox.Name = "Textbox"
			Textbox.Parent = MainFramePage
			Textbox.BackgroundColor3 = _G.Color
			Textbox.BackgroundTransparency = 0
			Textbox.Size = UDim2.new(0, 470, 0, 31)

			TextboxCorner.CornerRadius = UDim.new(0, 5)
			TextboxCorner.Name = "TextboxCorner"
			TextboxCorner.Parent = Textbox

			Textboxx.Name = "Textboxx"
			Textboxx.Parent = Textbox
			Textboxx.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Textboxx.Position = UDim2.new(0, 1, 0, 1)
			Textboxx.Size = UDim2.new(0, 468, 0, 29)

			TextboxxCorner.CornerRadius = UDim.new(0, 5)
			TextboxxCorner.Name = "TextboxxCorner"
			TextboxxCorner.Parent = Textboxx

			TextboxLabel.Name = "TextboxLabel"
			TextboxLabel.Parent = Textbox
			TextboxLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextboxLabel.BackgroundTransparency = 1.000
			TextboxLabel.Position = UDim2.new(0, 15, 0, 0)
			TextboxLabel.Text = text
			TextboxLabel.Size = UDim2.new(0, 145, 0, 31)
			TextboxLabel.Font = Enum.Font.GothamSemibold
			TextboxLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextboxLabel.TextSize = 16.000
			TextboxLabel.TextTransparency = 0
			TextboxLabel.TextXAlignment = Enum.TextXAlignment.Left

			txtbtn.Name = "txtbtn"
			txtbtn.Parent = Textbox
			txtbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			txtbtn.BackgroundTransparency = 1.000
			txtbtn.Position = UDim2.new(0, 1, 0, 1)
			txtbtn.Size = UDim2.new(0, 468, 0, 29)
			txtbtn.Font = Enum.Font.SourceSans
			txtbtn.Text = ""
			txtbtn.TextColor3 = Color3.fromRGB(0, 0, 0)
			txtbtn.TextSize = 14.000

			RealTextbox.Name = "RealTextbox"
			RealTextbox.Parent = Textbox
			RealTextbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			RealTextbox.BackgroundTransparency = 0
			RealTextbox.Position = UDim2.new(0, 360, 0, 4)
			RealTextbox.Size = UDim2.new(0, 100, 0, 24)
			RealTextbox.Font = Enum.Font.GothamSemibold
			RealTextbox.Text = ""
			RealTextbox.TextColor3 = Color3.fromRGB(225, 225, 225)
			RealTextbox.TextSize = 11.000
			RealTextbox.TextTransparency = 0

			RealTextbox.FocusLost:Connect(function()
				callback(RealTextbox.Text)
				if disappear then
					RealTextbox.Text = ""
				end
			end)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = RealTextbox
		end
		function main:Label(text)
			local Label = Instance.new("TextLabel")
			local PaddingLabel = Instance.new("UIPadding")
			local labelfunc = {}
	
			Label.Name = "Label"
			Label.Parent = MainFramePage
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Size = UDim2.new(0, 470, 0, 20)
			Label.Font = Enum.Font.GothamSemibold
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 16.000
			Label.Text = text
			Label.TextXAlignment = Enum.TextXAlignment.Left

			PaddingLabel.PaddingLeft = UDim.new(0,15)
			PaddingLabel.Parent = Label
			PaddingLabel.Name = "PaddingLabel"
	
			function labelfunc:Set(newtext)
				Label.Text = newtext
			end
			return labelfunc
		end

		function main:Seperator(text)
			local Seperator = Instance.new("Frame")
			local Sep1 = Instance.new("Frame")
			local Sep2 = Instance.new("TextLabel")
			local Sep3 = Instance.new("Frame")
			
			Seperator.Name = "Seperator"
			Seperator.Parent = MainFramePage
			Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Seperator.BackgroundTransparency = 1.000
			Seperator.Size = UDim2.new(0, 470, 0, 20)
			
			Sep1.Name = "Sep1"
			Sep1.Parent = Seperator
			Sep1.BackgroundColor3 = _G.Color
			Sep1.BorderSizePixel = 0
			Sep1.Position = UDim2.new(0, 0, 0, 10)
			Sep1.Size = UDim2.new(0, 80, 0, 1)
			
			Sep2.Name = "Sep2"
			Sep2.Parent = Seperator
			Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.BackgroundTransparency = 1.000
			Sep2.Position = UDim2.new(0, 185, 0, 0)
			Sep2.Size = UDim2.new(0, 100, 0, 20)
			Sep2.Font = Enum.Font.GothamSemibold
			Sep2.Text = text
			Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.TextSize = 14.000
			
			Sep3.Name = "Sep3"
			Sep3.Parent = Seperator
			Sep3.BackgroundColor3 = _G.Color
			Sep3.BorderSizePixel = 0
			Sep3.Position = UDim2.new(0, 390, 0, 10)
			Sep3.Size = UDim2.new(0, 80, 0, 1)
		end

		function main:Line()
			local Linee = Instance.new("Frame")
			local Line = Instance.new("Frame")
			
			Linee.Name = "Linee"
			Linee.Parent = MainFramePage
			Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Linee.BackgroundTransparency = 1.000
			Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
			Linee.Size = UDim2.new(0, 470, 0, 20)
			
			Line.Name = "Line"
			Line.Parent = Linee
			Line.BackgroundColor3 = _G.Color
			Line.BorderSizePixel = 0
			Line.Position = UDim2.new(0, 0, 0, 10)
			Line.Size = UDim2.new(0, 470, 0, 1)
		end
		return main
	end
	return uitab
end


    function EquipWeapon(ToolSe)
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            getgenv().tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait()
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
        end
    end
    
    --PartTaiFoot
    spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if FRaid or BanditF or BossFarmAll or BossFarm or BanditSadF or MoiF or BatinbF or BrutalF or CoolF or Jungle_fromF or TreeF or Sky_2F or Sky_MODF or Very_brutalF or ViuyrF or AutoGodDragon or FarmTeleportEgg or AutoS or AutoJao_Ta_Lay or AutoFarmCandy or FarmLightBoss or Swimming_BanditF or Second_PirateF or WtorF or Sky_PirF or AutoThunder_God then
            if not game:GetService("Workspace"):FindFirstChild("TaiFoot") then
                local LOL = Instance.new("Part")
                LOL.Name = "TaiFoot"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 1
                LOL.Size = Vector3.new(30,-0.5,30)
            elseif game:GetService("Workspace"):FindFirstChild("TaiFoot") then
                game.Workspace["TaiFoot"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
            end
        else
            if game:GetService("Workspace"):FindFirstChild("TaiFoot") then
                game:GetService("Workspace"):FindFirstChild("TaiFoot"):Destroy()
            end
        end
    end)
    end)
    
    --functionTeleport
    function TP(Kuy)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Kuy
    end
    
    --AutoRandomFrameRaid
Type = 1
spawn(function()
    while wait(.1) do
        if Type == 1 then
            Nframe = CFrame.new(0,13,0)
		elseif Type == 2 then
			Nframe = CFrame.new(0,13,-7)
		elseif Type == 3 then
			Nframe = CFrame.new(7,13,0)
		elseif Type == 4 then
			Nframe = CFrame.new(0,13,7)	
		elseif Type == 5 then
			Nframe = CFrame.new(-7,13,0)
		elseif Type == 6 then
			Nframe = CFrame.new(0,13,0)
        end
        end
    end)

spawn(function()
    while wait(.1) do
        Type = 1
        wait(0.1)
        Type = 2
        wait(0.3)
        Type = 3
        wait(0.3)
        Type = 4
        wait(0.3)
        Type = 5
        wait(0.3)
    end
end)

    Old_World = false
	New_World = false
    local placeId = game.PlaceId
    if placeId == 14288176792 then
		Old_World = true
	elseif placeId == 15030260251 then
		New_World = true
	end
	
local Library = Update:Window("GAFIW","15290248296",Enum.KeyCode.RightControl);

Main = Library:Tab("Main",6026568198)
Ss = Library:Tab("Stats",7040410130)
Mis = Library:Tab("Misc Farm",6034900727)
TPI = Library:Tab("Teleport",7044226690)
Raid = Library:Tab("Raid",11155986081)
S = Library:Tab("Buy Item",6031265976)
Misc = Library:Tab("Misc",11156061121)
Set = Library:Tab("Setting","6034509993")
S2 = Library:Tab("Buy Item would 2",1031095975)

Main:Seperator("Credit")
    
Main:Label("Script By Natthaphon Phuangphila ")

Main:Label("Discord Developer Account Name @GAFIW ")
Main:Label("Discord Developer Display Name GAFIW ")

Main:Button("Copy FACEBOOK  Owner GAFIW",function()
setclipboard("https://www.facebook.com/GAFIWz15y?mibextid=ZbWKwL")
end)

Main:Line()
Time = Main:Label("Server Time")
    
    function UpdateTime()
        local GameTime = math.floor(workspace.DistributedGameTime+0.5)
        local Hour = math.floor(GameTime/(60^2))%24
        local Minute = math.floor(GameTime/(60^1))%60
        local Second = math.floor(GameTime/(60^0))%60
        Time:Set("Hr(s) : "..Hour.." Min(s) : "..Minute.." Sec(s) : "..Second)
    end
    
    spawn(function()
        while task.wait() do
            pcall(function()
                UpdateTime()
            end)
        end
    end)
    
    Main:Seperator("Select Weapon")
    
    WeaponList = {}
    
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
        if v:IsA("Tool") then
            table.insert(WeaponList, v.Name)
        end
    end
    
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            table.insert(WeaponList ,v.Name)
        end
    end
    
    local SelectP = Main:Dropdown("Select Weapon",WeaponList,function(value)
        _G.SelectWeapon = value
    end)
    
    Main:Button("Refresh Weapon",function()
        SelectP:Clear()
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
            if v:IsA("Tool") then
                SelectP:Add(v.Name)
            end
        end
        
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
                SelectP:Add(v.Name)
            end
        end
    end)
    
    Main:Seperator("🗽Boss Farm🗽")
    
    
local Boss = {}
for i,v in pairs(workspace.Monster.Boss:GetChildren()) do
	table.insert(Boss, v.Name)
end
    
    local BossName = Main:Dropdown("Select Boss",Boss,function(value)
        BossF = value
    end)
    
    Main:Button("Refresh Boss",function()
        BossName:Clear()
            for i, v in pairs(workspace.Monster.Boss:GetChildren()) do
                BossName:Add(v.Name) 
            end
        end)
   
    
    Main:Toggle("Auto Farm Boss",false,function(value)
        BossFarm = value
    end)
    
    
    spawn(function()
        while wait() do
            if BossFarm then
                pcall(function()
                    if workspace.Monster.Boss:FindFirstChild(BossF) then
                        for i,v in pairs(workspace.Monster.Boss:GetChildren()) do
                            if v.Name == BossF then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                        
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not BossFarm or not v.Parent or v.Humanoid.Health <= 0                                    
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(BossF) then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild(BossF).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm All Boss",false,function(value)
        BossFarmAll = value
    end)
spawn(function()
	while wait() do
		if BossFarmAll then
			for i,v in pairs(workspace.Monster.Boss:GetChildren()) do
                if v.Name and v:FindFirstChild("Humanoid") then
			        if v.Humanoid.Health > 0 then
			            repeat wait()
			              EquipWeapon(_G.SelectWeapon)
			                TP(v.HumanoidRootPart.CFrame * MethodFarm)
			                v.HumanoidRootPart.CanCollide = false			                
			                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						    game:GetService'VirtualUser':CaptureController()
                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
			            until not BossFarmAll or not v.Parent or v.Humanoid.Health <= 0 			            
			        end
			    end
			end
		end
	end
end)

    Main:Seperator("🤼Enemies Farm🤼")
    
    Main:Toggle("Auto Farm Bandit",false,function(value)
        BanditF = value
    end)
    
    spawn(function()
        while wait() do
            if BanditF then
                pcall(function()
                    if workspace.Monster.Bandit:FindFirstChild("Bandit") then
                        for i,v in pairs(workspace.Monster.Bandit:GetChildren()) do
                            if v.Name == "Bandit" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                       
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not BanditF or not v.Parent or v.Humanoid.Health <= 0                                   
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Bandit") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Bandit").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Bandit Sad",false,function(value)
        BanditSadF = value
    end)
    
    spawn(function()
        while wait() do
            if BanditSadF then
                pcall(function()
                    if workspace.Monster["Bandit Sad"]:FindFirstChild("Bandit Sad") then
                        for i,v in pairs(workspace.Monster["Bandit Sad"]:GetChildren()) do
                            if v.Name == "Bandit Sad" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                        
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not BanditSadF or not v.Parent or v.Humanoid.Health <= 0                                    
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Bandit Sad") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Bandit Sad").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Moi",false,function(value)
        MoiF = value
    end)
    
    spawn(function()
        while wait() do
            if MoiF then
                pcall(function()
                    if workspace.Monster.Moi:FindFirstChild("Moi") then
                        for i,v in pairs(workspace.Monster.Moi:GetChildren()) do
                            if v.Name == "Moi" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                        
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not MoiF or not v.Parent or v.Humanoid.Health <= 0                                   
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Moi") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Moi").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Batinb",false,function(value)
        BatinbF = value
    end)
    
    spawn(function()
        while wait() do
            if BatinbF then
                pcall(function()
                    if workspace.Monster.Batinb:FindFirstChild("Batinb") then
                        for i,v in pairs(workspace.Monster.Batinb:GetChildren()) do
                            if v.Name == "Batinb" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                            
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not BatinbF or not v.Parent or v.Humanoid.Health <= 0                                    
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Batinb") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Batinb").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Brutal",false,function(value)
        BrutalF = value
    end)
    
    spawn(function()
        while wait() do
            if BrutalF then
                pcall(function()
                    if workspace.Monster.Brutal:FindFirstChild("Brutal") then
                        for i,v in pairs(workspace.Monster.Brutal:GetChildren()) do
                            if v.Name == "Brutal" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                       
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not BrutalF or not v.Parent or v.Humanoid.Health <= 0                                   
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Brutal") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Brutal").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Cool",false,function(value)
        CoolF = value
    end)
    
    spawn(function()
        while wait() do
            if CoolF then
                pcall(function()
                    if workspace.Monster.Cool:FindFirstChild("Cool") then
                        for i,v in pairs(workspace.Monster.Cool:GetChildren()) do
                            if v.Name == "Cool" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                      
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not CoolF or not v.Parent or v.Humanoid.Health <= 0                                    
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cool") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Cool").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Jungle from",false,function(value)
        Jungle_fromF = value
    end)
    
    spawn(function()
        while wait() do
            if Jungle_fromF then
                pcall(function()
                    if workspace.Monster["Jungle from"]:FindFirstChild("Jungle from") then
                        for i,v in pairs(workspace.Monster["Jungle from"]:GetChildren()) do
                            if v.Name == "Jungle from" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                        
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not Jungle_fromF or not v.Parent or v.Humanoid.Health <= 0                                    
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Jungle from") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Jungle from").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Tree",false,function(value)
        TreeF = value
    end)
    
    spawn(function()
        while wait() do
            if TreeF then
                pcall(function()
                    if workspace.Monster.Tree:FindFirstChild("Tree") then
                        for i,v in pairs(workspace.Monster.Tree:GetChildren()) do
                            if v.Name == "Tree" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                      
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not TreeF or not v.Parent or v.Humanoid.Health <= 0                                    
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Tree") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Tree").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Sky 2",false,function(value)
        Sky_2F = value
    end)
    
    spawn(function()
        while wait() do
            if Sky_2F then
                pcall(function()
                    if workspace.Monster["Sky 2"]:FindFirstChild("Sky 2") then
                        for i,v in pairs(workspace.Monster["Sky 2"]:GetChildren()) do
                            if v.Name == "Sky 2" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                        
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not Sky_2F or not v.Parent or v.Humanoid.Health <= 0                                   
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Sky 2") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Sky 2").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Sky MOD",false,function(value)
        Sky_MODF = value
    end)
    
    spawn(function()
        while wait() do
            if Sky_MODF then
                pcall(function()
                    if workspace.Monster["Sky MOD"]:FindFirstChild("Sky MOD") then
                        for i,v in pairs(workspace.Monster["Sky MOD"]:GetChildren()) do
                            if v.Name == "Sky MOD" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                        
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not Sky_MODF or not v.Parent or v.Humanoid.Health <= 0                                   
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Sky MOD") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Sky MOD").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Very brutal",false,function(value)
        Very_brutalF = value
    end)
    
    spawn(function()
        while wait() do
            if Very_brutalF then
                pcall(function()
                    if workspace.Monster["Very brutal"]:FindFirstChild("Very brutal") then
                        for i,v in pairs(workspace.Monster["Very brutal"]:GetChildren()) do
                            if v.Name == "Very brutal" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                        
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not Very_brutalF or not v.Parent or v.Humanoid.Health <= 0                                  
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Very brutal") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Very brutal").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Viuyr",false,function(value)
        ViuyrF = value
    end)
    
    spawn(function()
        while wait() do
            if ViuyrF then
                pcall(function()
                    if workspace.Monster.Viuyr:FindFirstChild("Viuyr") then
                        for i,v in pairs(workspace.Monster.Viuyr:GetChildren()) do
                            if v.Name == "Viuyr" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                       
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not ViuyrF or not v.Parent or v.Humanoid.Health <= 0                                    
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Viuyr") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Viuyr").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Label("Wrold 2 ")
    
    Main:Toggle("Auto Farm Swimming Bandit",false,function(value)
        Swimming_BanditF = value
    end)
    
    spawn(function()
        while wait() do
            if Swimming_BanditF then
                pcall(function()
                    if workspace.Monster["Swimming Bandit"]:FindFirstChild("Swimming Bandit") then
                        for i,v in pairs(workspace.Monster["Swimming Bandit"]:GetChildren()) do
                            if v.Name == "Swimming Bandit" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                       
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not Swimming_BanditF or not v.Parent or v.Humanoid.Health <= 0                                    
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Swimming Bandit") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Swimming Bandit").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Second Pirate",false,function(value)
        Second_PirateF = value
    end)
    
    spawn(function()
        while wait() do
            if Second_PirateF then
                pcall(function()
                    if workspace.Monster["Second Pirate"]:FindFirstChild("Second Pirate") then
                        for i,v in pairs(workspace.Monster["Second Pirate"]:GetChildren()) do
                            if v.Name == "Second Pirate" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                       
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not Second_PirateF or not v.Parent or v.Humanoid.Health <= 0                                    
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Second Pirate") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Second Pirate").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Sky Pir",false,function(value)
        Sky_PirF = value
    end)
    
    spawn(function()
        while wait() do
            if Sky_PirF then
                pcall(function()
                    if workspace.Monster["Sky Pir"]:FindFirstChild("Sky Pir") then
                        for i,v in pairs(workspace.Monster["Sky Pir"]:GetChildren()) do
                            if v.Name == "Sky Pir" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                       
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not Sky_PirF or not v.Parent or v.Humanoid.Health <= 0                                    
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Sky Pir") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Sky Pir").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Toggle("Auto Farm Wtor",false,function(value)
        WtorF = value
    end)
    
    spawn(function()
        while wait() do
            if WtorF then
                pcall(function()
                    if workspace.Monster.Wtor:FindFirstChild("Wtor") then
                        for i,v in pairs(workspace.Monster.Wtor:GetChildren()) do
                            if v.Name == "Wtor" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                       
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not WtorF or not v.Parent or v.Humanoid.Health <= 0                                    
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Wtor") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("WtorF").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Main:Line()

Ss:Seperator("📉Stats📉")

Ss:Toggle("Melee 👊",false,function(Value)
melee = Value    
end)
Ss:Toggle("Defense💪",false,function(value)
defense = value
end)
Ss:Toggle("Sword🗡︄1�7",false,function(value)
sword = value
end)
Ss:Toggle("Con Power🍎",false,function(value)
Conpower = value
end)

    spawn(function()
        pcall(function()
            while wait(0.5) do
                if melee then    
                    game:GetService("ReplicatedStorage")["Remote Event"]["Data Event"]:FireServer("stats_Upgrade","Melee",PointStats)
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait(0.5) do
                if sword then    
                    game:GetService("ReplicatedStorage")["Remote Event"]["Data Event"]:FireServer("stats_Upgrade","Sword",PointStats)
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait(0.5) do
                if defense then    
                    game:GetService("ReplicatedStorage")["Remote Event"]["Data Event"]:FireServer("stats_Upgrade","defend",PointStats)
                end
            end
        end)
    end)
    
    spawn(function()
        pcall(function()
            while wait(0.5) do
                if Conpower then    
                    game:GetService("ReplicatedStorage")["Remote Event"]["Data Event"]:FireServer("stats_Upgrade","Con Power",PointStats)
                end
            end
        end)
    end)

    PointStats = 1
    Ss:Slider("Stats Point",0,100,1,function(value)
    PointStats = value
    end)

Mis:Seperator("🌍World 2 Quest🌍")
    
    Mis:Toggle("Teleport To Map",false,function(value)
        TpMap = value
    end)
    
    spawn(function()
			while wait(.1) do
				if TpMap then
					for i,v in pairs(workspace.Island:GetChildren()) do
						if v.Name == "Map" then
							TP(v.Parent.CFrame)
						end
					end
				end
    end
    end)

Mis:Seperator("🐉God Dragon🐉")

local Dargon = Mis:Label("Status")


	spawn(function()
		while wait() do
			pcall(function()
				if workspace.Monster.Boss:FindFirstChild("God Dragon") then
					Dargon:Set("Status : Spawn!")	
				else
					Dargon:Set("Status : God Dragon Not Spawn")	
				end
			end)
		end
	end)
	
Mis:Toggle("Auto Farm God Dragon",false,function(value)
        AutoGodDragon = value
    end)
    
    
    spawn(function()
        while wait() do
            if AutoGodDragon then
                pcall(function()
                    if workspace.Monster.Boss:FindFirstChild("God Dragon") then
                        for i,v in pairs(workspace.Monster.Boss:GetChildren()) do
                            if v.Name == "God Dragon" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)                                    
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not AutoGodDragon or not v.Parent or v.Humanoid.Health <= 0                                    
                                    TP(CFrame.new(3701.620361328125, 1061.0081787109375, -1004.0806274414062))
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("God Dragon") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("God Dragon").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Mis:Toggle("Auto Teleport Egg (ถ้าเจอ Telepote Egg จะหยุดฟาร์ม)",false,function(value)
        FarmTeleportEgg = value
        StardFarm = value
    end)
    
    spawn(function()
		pcall(function()
			while wait() do
				if FarmTeleportEgg then
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Teleport egg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleport egg") then
					    StardFarm = false
					    TP(CFrame.new(4166.06982421875, 23.8916015625, 1934.2156982421875))
					end
				end
			end
		end)
	end)
    spawn(function()
        while wait() do
            if StardFarm then
                pcall(function()
                    if workspace.Monster.Boss:FindFirstChild("Realistic chicken") then
                        for i,v in pairs(workspace.Monster.Boss:GetChildren()) do
                            if v.Name == "Realistic chicken" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not StardFarm or not v.Parent or v.Humanoid.Health <= 0
                                    TP(CFrame.new(4166.06982421875, 23.8916015625, 1934.2156982421875))
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Realistic chicken") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Realistic chicken").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
		pcall(function()
			while wait() do
				if FarmTeleportEgg then
					if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Teleport egg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Teleport egg") then
					    StardFarm = true
					end
				end
			end
		end)
	end)

    Mis:Seperator("🔥Boss S🔥")

local BossS = Mis:Label("Status")


	spawn(function()
		while wait() do
			pcall(function()
				if workspace.Monster.Boss:FindFirstChild("Boss S") then
					BossS:Set("Status : Spawn!")	
				else
					BossS:Set("Status : Boss s Not Spawn")	
				end
			end)
		end
	end)
	
Mis:Toggle("Auto Farm Boss S",false,function(value)
        AutoS = value
    end)
    
    
    spawn(function()
        while wait() do
            if AutoS then
                pcall(function()
                    if workspace.Monster.Boss:FindFirstChild("Boss S") then
                        for i,v in pairs(workspace.Monster.Boss:GetChildren()) do
                            if v.Name == "Boss S" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not AutoS or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Boss S") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Boss S").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Mis:Seperator("✨Light Awaken✄1�7")
    
    local Light = Mis:Label("Status")


	spawn(function()
		while wait() do
			pcall(function()
				if workspace.Monster.Boss:FindFirstChild("L - ight Boss") then
					Light:Set("Status : Spawn!")	
				else
					Light:Set("Status : Light Boss Not Spawn")	
				end
			end)
		end
	end)
	
    Mis:Toggle("Auto Light Boss",false,function(value)
        FarmLightBoss = value
        StardFarmL = value
    end)
    
    spawn(function()
		pcall(function()
			while wait() do
				if FarmLightBoss then
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Awakened Con") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Awakened Con") then
					    StardFarmL = false
					    TP(CFrame.new(3701.620361328125, 1061.0081787109375, -1004.0806274414062))
					end
				end
			end
		end)
	end)
    spawn(function()
        while wait() do
            if StardFarmL then
                pcall(function()
                    if workspace.Monster.Boss:FindFirstChild("L - ight Boss") then
                        for i,v in pairs(workspace.Monster.Boss:GetChildren()) do
                            if v.Name == "L - ight Boss" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not StardFarmL or not v.Parent or v.Humanoid.Health <= 0
                                    TP(CFrame.new(3701.620361328125, 1061.0081787109375, -1004.0806274414062))
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("L - ight Boss") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("L - ight Boss").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    spawn(function()
		pcall(function()
			while wait() do
				if FarmLightBoss then
					if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Awakened Con") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Awakened Con") then
					    StardFarmL = true
					end
				end
			end
		end)
	end)
	
    Mis:Seperator("🦎JaoTaLay🦎")
    
    local JaoTaLay = Mis:Label("Status")


	spawn(function()
		while wait() do
			pcall(function()
				if workspace.Monster.Boss:FindFirstChild("Jao Ta Lay") then
					JaoTaLay:Set("Status : Spawn!")	
				else
					JaoTaLay:Set("Status : JaoTaLay Not Spawn")	
				end
			end)
		end
	end)
	
    Mis:Toggle("Auto Jao Sword",false,function(value)
        AutoJao_Ta_Lay = value
    end)
    
    
    spawn(function()
        while wait() do
            if AutoJao_Ta_Lay then
                pcall(function()
                    if workspace.Monster.Boss:FindFirstChild("Jao Ta Lay") then
                        for i,v in pairs(workspace.Monster.Boss:GetChildren()) do
                            if v.Name == "Jao Ta Lay" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not AutoJao_Ta_Lay or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Jao Ta Lay") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Jao Ta Lay").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    Mis:Line()
    
    Mis:Label("Status: NewWrold")
    
    Mis:Seperator("⚡Tunder Con Awaken⚄1�7")
    
    local Thunder_God = Mis:Label("Status")


	spawn(function()
		while wait() do
			pcall(function()
				if workspace.Monster.Boss:FindFirstChild("Thunder God") then
					Thunder_God:Set("Status : Spawn!")	
				else
					Thunder_God:Set("Status : Thunder God Not Spawn")	
				end
			end)
		end
	end)
	
    Mis:Toggle("Auto Thunder God",false,function(value)
        AutoThunder_God = value
    end)
    
    
    spawn(function()
        while wait() do
            if AutoThunder_God then
                pcall(function()
                    if workspace.Monster.Boss:FindFirstChild("Thunder God") then
                        for i,v in pairs(workspace.Monster.Boss:GetChildren()) do
                            if v.Name == "Thunder God" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        TP(v.HumanoidRootPart.CFrame * MethodFarm)
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not AutoThunder_God or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)
    
    
    TPI:Seperator("🌀Teleport🌀")
    
if Old_World then
    TPI:Button("Start Island", function()
        TP(CFrame.new(-18.668197631835938, 30.196548461914062, 532.3953857421875))
    end)
    
    TPI:Button("Moi Island", function()
        TP(CFrame.new(123.4515380859375, -8.154670715332031, 1894.5242919921875))
    end)
       
    TPI:Button("Light Awakened Spawn Island", function()
        TP(CFrame.new(1924.84619140625, 0.414495050907135, -2582.378173828125))
    end)
    
    TPI:Button("4 Black House Island", function()
        TP(CFrame.new(-3112.943115234375, 112.6680908203125, 4893.70654296875))
    end)
    
    TPI:Button("ไ1�7กาะบอสมอนฟรอบป้า", function()
        TP(CFrame.new(1768.1092529296875, 21.81130027770996, 2675.236572265625))
    end)
    
    TPI:Button("Du Island", function()
        TP(CFrame.new(349.5048828125, 40.51728439331055, -2718.834716796875))
    end)
    
    TPI:Button("Tree Mon", function()
        TP(CFrame.new(1561.6358642578125, 25.976299285888672, 625.0327758789062))
    end)
    
    TPI:Button("..... R Mon Island", function()
        TP(CFrame.new(-2102.53662109375, 16.067630767822266, 679.8883056640625))
    end)
    
    TPI:Button("Piopw Mon", function()
        TP(CFrame.new(-763.8184814453125, 17.448894500732422, -204.27235412597656))
    end)
    
    TPI:Button("Jungle", function()
        TP(CFrame.new(-2761.2119140625, -9.750391006469727, -1211.0699462890625))
    end)
    
    TPI:Button("Chiken Island", function()
        TP(CFrame.new(4166.06982421875, 23.8916015625, 1934.2156982421875))
    end)
    
    TPI:Button("Jao Ta Lay Spawn Island", function()
        TP(CFrame.new(1728.5831298828125, 28.026504516601562, -915.1522216796875))
    end)
    
    TPI:Button("ไ1�7กาะต้นมะพร้าค1�7", function()
        TP(CFrame.new(3504.190673828125, 105.4891128540039, -1331.763916015625))
    end)
    
    TPI:Button("(Event) Halloween Island", function()
        TP(CFrame.new(-6897.89697265625, 88.94103240966797, 3791.481201171875))
    end)
    
    TPI:Button("Sky Island", function()
        TP(CFrame.new(-1235.4447021484375, 339.15081787109375, 1102.970703125))
    end)
    
    TPI:Button("Pink Mon Island", function()
        TP(CFrame.new(-1154.3155517578125, 52.033958435058594, 2189.92236328125))
    end)
    
    TPI:Button("viury Island", function()
        TP(CFrame.new(-3822.41552734375, 85.11499786376953, 2689.297607421875))
    end)   
elseif New_World then
    TPI:Button("Start Island", function()
        TP(CFrame.new(-902.0737915039062, 18.694284439086914, 1097.89013671875))
    end)
    
    TPI:Button("Skypia", function()
        TP(CFrame.new(-89.07611846923828, 150.37496948242188, 4283.85009765625))
    end)
    
    TPI:Button("Forrest", function()
        TP(CFrame.new(-2471.54345703125, -6.456438064575195, 2055.71728515625))
    end)
    
    TPI:Button("Yoku and samok", function()
        TP(CFrame.new(-3334.44531, 39.4478188, 3121.51025, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
    
    TPI:Button("sakura", function()
        TP(CFrame.new(1579.78381, 2.00321937, -2411.90796, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)
    
        TPI:Button("Watter island", function()
        TP(CFrame.new(-3546.559326171875, 169.61036682128906, -1325.3228759765625))
    end)
end
    
if New_World then
    Raid:Label("soon")
end

if New_World then
Raid:Seperator("Raid sea 2")

Raid:Toggle("Auto Farm Raid",false,function(value)
        FRaid = value
    end)
    
    spawn(function()
        while wait() do
            if FRaid then
                pcall(function()
                    if workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Fish Bandit") or workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Speed Fish") or workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Cool Fish") or workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Sleepy Fish") or workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Fish Buffer") or workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Fish Boss") or workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Sky Cave") or workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Rabbit Cave") or workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Sky Buff") or workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Speed Cave") or workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Cave Dragon") or workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Cave Boss") or workspace.Island["Sea Raid"]["Raid Monster"]:FindFirstChild("Door") then
                        for i,v in pairs(workspace.Island["Sea Raid"]["Raid Monster"]:GetChildren()) do
                            if v.Name == "Fish Bandit" or v.Name == "Speed Fish" or v.Name == "Cool Fish" or v.Name == "Sleepy Fish" or v.Name == "Fish Buffer" or v.Name == "Fish Boss" or v.Name == "Sky Cave" or v.Name == "Rabbit Cave" or v.Name == "Sky Buff" or v.Name == "Speed Cave" or v.Name == "Cave Dragon" or v.Name == "Cave Boss" or v.Name == "Door"  then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        _G.NotEquip = true	
                                        v.HumanoidRootPart.Size = Vector3.new(35,35,35)
                                        v.HumanoidRootPart.Transparency = 0.8                             
                                        TP(v.HumanoidRootPart.CFrame * Nframe  * CFrame.Angles(math.rad(-90),0,0))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),game:GetService("Workspace").Camera.CFrame)
                                    until not FRaid or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Glow Bandit") then
                            TP(game:GetService("ReplicatedStorage"):FindFirstChild("Glow Bandit").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end) 
    
        spawn(function()
            while wait() do
                if FRaid then
                    if not _G.NotEquip then
                        pcall(function()
                            for i,v in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                                if v:IsA("Tool") then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                end
                            end
                        end)
                    end
                end
            end
        end) 
             
for i,v in pairs(workspace.Island["Sea Raid"]["Raid Monster"]:GetChildren()) do
    v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
    v.HumanoidRootPart.Transparency = 0.7
end

    Raid:Button("Teleport To Raid", function()
    TP(CFrame.new(-3620.48242, 88.8300018, -1417.31335, -0.994287908, -0.105106279, 0.0185547136, 4.4106313e-10, 0.173844844, 0.984773159, -0.106731459, 0.97914803, -0.172851816))
    end)

    Raid:Label("Raid Setting")
 
    Raid:Toggle("Skill Z",true,function(value)
        SkillZ = value
    end)
    Raid:Toggle("Skill X",true,function(value)
        SkillX = value
    end)
    Raid:Toggle("Skill C",true,function(value)
        SkillC = value
    end)
    Raid:Toggle("Skill V",true,function(value)
        SkillV = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if FRaid then          
                    if SkillZ then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                    end
                    if SkillX then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                    end
                    if SkillC then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                    end
                    if SkillV then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                    end
                end
            end)
        end
    end)
end
    
    
  S:Label("✄1�7 Misc Shop✄1�7")
    
    S:Button("Random Reall Fruit 3Gem", function()
        TP(CFrame.new(-815.3197021484375, 99900.6015625, -1697.9193115234375))
    end)
    
    S:Button("Glue Punch Shop", function()
        TP(CFrame.new(-954.4691162109375, 100091, -1662.753662109375))
    end)
     
     S:Button("Teleport To Change Punch Glue", function()
        TP(CFrame.new(1920.786865234375, -9.63898754119873, -490.0093078613281))
    end)
    
    S:Seperator("🗡︄1�7 Sword🗡︄1�7")
    

    S:Button("Katana", function()
        TP(CFrame.new(28.93720054626465, -7.980710983276367, 510.7598571777344))
    end)
    
    S:Button("Demonic", function()
        TP(CFrame.new(630.811279296875, 21213.515625, 2269.21533203125))
    end)
    
    S:Button("Daimon Sword", function()
        TP(CFrame.new(-38.42456817626953, -6.894991874694824, 2141.292724609375))
    end)
    
    S:Button("Jao Sword UpgradeSkill 1", function()
        TP(CFrame.new(-785.407470703125, 8.672829627990723, -147.89877319335938))
    end)
    
    S:Button("Jao Sword UpgradeSkill 2", function()
        TP(CFrame.new(1700.2845458984375, 33.4357795715332, -1032.6563720703125))
    end)
    
    S:Button("Cara Sword", function()
        TP(CFrame.new(-128.51234436035156, 27.231464385986328, 2011.1683349609375))
    end)
    
    S:Button("Poe Sword", function()
        TP(CFrame.new(-1277.068359375, 331.23858642578125, 1119.75830078125))
    end)
    
    S:Button("Mini Yoru", function()
        TP(CFrame.new(-2131.33837890625, 13.067608833312988, 706.7514038085938))
    end)
    
    S:Button("Sama", function()
        TP(CFrame.new(-2097.541748046875, 12.468692779541016, 479.2992858886719))
    end)
    
    S:Button("Pipe", function()
        TP(CFrame.new(-688.464599609375, -5.646834373474121, -1684.6995849609375))
    end)
    
    S:Button("Tree Sword", function()
        TP(CFrame.new(389.75836181640625, 8.809823989868164, -2810.92431640625))
    end)
    
    S:Button("Yang Sword", function()
        TP(CFrame.new(1606.6729736328125, 40.55868148803711, 585.9592895507812))
    end)
      
    Mis:Seperator("Wrold2") 
 
    S:Seperator("Status wrold2")
    S:Button("Green Hammer", function()
        TP(CFrame.new(-786.479248046875, -2.6676223278045654, 1068.44384765625))
    end)
    
    S:Button("electron", function()
        TP(CFrame.new(73.139122, 261.281036, 4729.60596, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    end)

Misc:Seperator("💻Server💻")
    
    spawn(function()
        while wait() do
            pcall(function()
                JobAiDee:Set("Job ID :".." "..game.JobId)
            end)
        end
    end)
    
    
    JobAiDee = Misc:Label("Job ID : ")
    
    
    Misc:Button("Rejoin Server",function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)
    
    Misc:Button("Server Hop",function()
        Hop()
    end)
    
    Misc:Button("Hop To Lower Player",function()
        getgenv().AutoTeleport = true
        getgenv().DontTeleportTheSameNumber = true 
        getgenv().CopytoClipboard = false
        if not game:IsLoaded() then
            print("Game is loading waiting...")
        end
        local maxplayers = math.huge
        local serversmaxplayer;
        local goodserver;
        local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
        function serversearch()
            for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                    serversmaxplayer = v.maxPlayers
                    maxplayers = v.playing
                    goodserver = v.id
                end
            end       
        end
        function getservers()
            serversearch()
            for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                if i == "nextPageCursor" then
                    if gamelink:find("&cursor=") then
                        local a = gamelink:find("&cursor=")
                        local b = gamelink:sub(a)
                        gamelink = gamelink:gsub(b, "")
                    end
                    gamelink = gamelink .. "&cursor=" ..v
                    getservers()
                end
            end
        end 
        getservers()
        if AutoTeleport then
            if DontTeleportTheSameNumber then 
                if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                    return warn("It has same number of players (except you)")
                elseif goodserver == game.JobId then
                    return warn("Your current server is the most empty server atm") 
                end
            end
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
        end
    end)
    
    Misc:Button("Copy Job Id",function()
	setclipboard(tostring(game.JobId))
	end)
	
    Misc:Textbox("Place Job Id", true, function(value)
	_G.Job = value
	end)

	Misc:Button("Join Sever ",function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
	end)
	
    Misc:Seperator("⚙️Misc⚙️")
    
Misc:Toggle("Bring Fruit",_G.BringFruit,function(value)
        BringFruit = value
    end)
    
    spawn(function()
        while wait() do
            if BringFruit then
                pcall(function()
                    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v:IsA("Tool") then
                            v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end	
                end)
            end
        end
    end)
    
    Misc:Button("Click TP Tool",function()
        local plr = game:GetService("Players").LocalPlayer
        local mouse = plr:GetMouse()
        local tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Teleport Tool"
        tool.Activated:Connect(function()
        local root = plr.Character.HumanoidRootPart
        local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
        local offset = pos-root.Position
        root.CFrame = root.CFrame+offset
        end)
        tool.Parent = plr.Backpack
    end)
    
    Misc:Button("Max Zoom ซูมออกได้ไม่จำกัด", function()
		while wait() do
			game.Players.LocalPlayer.CameraMaxZoomDistance = 9223372036854718
			end
	end)
	Misc:Button("Day เวลาตอนสว่าง",function()
    game:GetService("RunService").Heartbeat:wait() do
        game:GetService("Lighting").ClockTime = 12
    end
    end)
    
    Misc:Button("Night เวลาตอนมืด",function()
    game:GetService("RunService").Heartbeat:wait() do
        game:GetService("Lighting").ClockTime = 0
    end
    end)
    
    Misc:Button("Fly Script (อย่าเอาไปอวดคนในเซิฟหรืออ้างเป็นแอดเดียวโดนแบนนะครับ)",function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
    end)
    
    Misc:Toggle("X Ray",false,function(value)
		NoWorld = value
		if NoWorld == true then
			transparent = true
			x(transparent)
		elseif NoWorld == false then
			transparent = false
			x(transparent)
		end
	end)

	local transparent = false -- xray
	function x(v)
		if v then
			for _,i in pairs(workspace:GetDescendants()) do
				if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
					i.LocalTransparencyModifier = 0.7
				end
			end
		else
			for _,i in pairs(workspace:GetDescendants()) do
				if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
					i.LocalTransparencyModifier = 0
				end
			end
		end
	end
	
    Misc:Toggle("ESP Player",false,function(value)
        ESPPlayer = value
        while ESPPlayer do wait()
            UpdateEspPlayer()
        end
    end)
    
function isnil(thing)
		return (thing == nil)
	end
	local function round(n)
		return math.floor(tonumber(n) + 0.5)
	end
	Number = math.random(1, 1000000)
	function UpdateEspPlayer()
		for i,v in pairs(game:GetService'Players':GetChildren()) do
			pcall(function()
				if not isnil(v.Character) then
					if ESPPlayer then
						if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Character.Head)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Character.Head
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = "GothamBold"
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Team == game.Players.LocalPlayer.Team then
								name.TextColor3 = Color3.new(0,255,0)
							else
								name.TextColor3 = Color3.new(50,255,255)
							end
						else
							v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
						end
					else
						if v.Character.Head:FindFirstChild('NameEsp'..Number) then
							v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
		end
	end
	
Misc:Toggle("ESP All Shop",false,function(value)
        ShopAESP = value
        while ShopAESP do wait()
            UpdateShopAESP()
        end
    end)
    
function UpdateShopAESP() 
        for i,v in pairs(workspace.Shop:GetChildren()) do
            pcall(function()
                if ShopAESP then 
                    if v.Name ~= "DonationChest" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(7, 236, 240)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
    
    Misc:Toggle("Esp Npc Shop",false,function(value)
        NpcEsp = value
    end)
    
spawn(function()
    while wait() do
        pcall(function()
            if NpcEsp then
                for i,v in pairs(workspace.Shop:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("NpcEspes") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "NpcEspes"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (workspace.Shop:GetChildren()) do
                    if v:FindFirstChild("NpcEspes") then
                        v.NpcEspes:Destroy()
                    end
                end
            end
        end)
    end
end)

Misc:Toggle("Esp Fruit Spawn",false,function(value)
        EspFruit = value
    end)
    
spawn(function()
    while wait() do
        pcall(function()
            if EspFruit then
                for i,v in pairs(workspace.ConSpawn:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("FruitSpawn") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "FruitSpawn"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.FruitSpawn.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs (workspace.ConSpawn:GetChildren()) do
                    if v:FindFirstChild("FruitSpawn") then
                        v.FruitSpawn:Destroy()
                    end
                end
            end
        end)
    end
end)


Misc:Toggle("Con ESP",false,function(value)
        DevilFruitESP = value
        while DevilFruitESP do wait()
            UpdateBfEsp() 
        end
    end)
    
    function UpdateBfEsp() 
        for i,v in pairs(game.Workspace:GetChildren()) do
            pcall(function()
                if DevilFruitESP then
                    if string.find(v.Name, "Con") then   
                        if not v.Handle:FindFirstChild('NameEsp'..Number) then
                            local bill = Instance.new('BillboardGui',v.Handle)
                            bill.Name = 'NameEsp'..Number
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v.Handle
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(0, 255, 255)
                            name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                        else
                            v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp'..Number) then
                        v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
                    end
                end
            end)
        end
    end
    

Misc:Seperator("Players")

Playerslist = {}
    
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        table.insert(Playerslist,v.Name)
    end
    
    local SelectedPly = Misc:Dropdown("Select Player",Playerslist,function(value)
        _G.SelectPly = value
    end)
    
    Misc:Button("Refresh Player",function()
        Playerslist = {}
        SelectedPly:Clear()
        for i,v in pairs(game:GetService("Players"):GetChildren()) do  
            SelectedPly:Add(v.Name)
        end
    end)
    
    Misc:Toggle("Spectate Player",false,function(value)
        SpectatePlys = value
        local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
        local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
        repeat wait(.1)
            game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
        until SpectatePlys == false 
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    end)
    
    Misc:Toggle("Teleport",false,function(value)
        _G.TeleportPly = value
        pcall(function()
            if _G.TeleportPly then
                repeat TP(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
            end
        end)
    end)
    
Misc:Slider("Walk Speed",1,500,16,function(Value)
game.Players.LocalPlayer.character.Humanoid.WalkSpeed = Value
end)

Misc:Slider("Jump power",1,500,100,function(Value)
game.Players.LocalPlayer.character.Humanoid.JumpPower = Value
end)

Set:Seperator("Setting Method")

Set:Dropdown("Select Method",{"Behind","Below","Upper"},function(value)
        _G.Method = value
    end)
    
    spawn(function()
        while wait() do 
            pcall(function()
                if _G.Method == "Behind" then
                    MethodFarm = CFrame.new(0,0,_G.DistanceMob)
                elseif _G.Method == "Below" then
                    MethodFarm = CFrame.new(0,-_G.DistanceMob,0) * CFrame.Angles(math.rad(90),0,0)
                elseif _G.Method == "Upper" then
                    MethodFarm = CFrame.new(0,_G.DistanceMob,0)  * CFrame.Angles(math.rad(-90),0,0)
                else
                    MethodFarm = CFrame.new(0,0,_G.DistanceMob)
                end
            end)
        end
    end)
    
    _G.DistanceMob = 5
    Set:Slider("Distance Mob",1,100,5,function(value)
        _G.DistanceMob = value
    end)
 
 Set:Seperator("Settings Skill")
 
    Set:Toggle("Skill Z",false,function(value)
        Skillz = value
    end)
    Set:Toggle("Skill X",false,function(value)
        Skillx = value
    end)
    Set:Toggle("Skill C",false,function(value)
        Skillc = value
    end)
    Set:Toggle("Skill V",false,function(value)
        Skillv = value
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                if BanditF or BossFarmAll or BossFarm or BanditSadF or MoiF or BatinbF or BrutalF or CoolF or Jungle_fromF or TreeF or Sky_2F or Sky_MODF or Very_brutalF or ViuyrF or AutoGodDragon or FarmTeleportEgg or AutoS or AutoJao_Ta_Lay or AutoFarmCandy or AutoThunder_God or Swimming_BanditF or Second_PirateF or Sky_PirF or WtorF then          
                    if Skillz then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                    end
                    if Skillx then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                    end
                    if Skillc then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                    end
                    if Skillv then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                    end
                end
            end)
        end
    end)
else
    game.Players.LocalPlayer:Kick("รันแมพอื่นไมไอHumLek")
    wait(1)
    game:Shutdown()
end

    
    
 

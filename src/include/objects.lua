local Module = {}

function Module.new(Name,...)
	local arg = {...}
	
	if Name == "html" then
		local Frame = Instance.new("Frame")
		
		Frame.Name = "html"
		Label.BorderSizePixel = 0
		Frame.BackgroundTransparency = 1
		Frame.BackgroundColor3 = Color3.new(1,1,1)
		Frame.BorderColor3 = Color3.new(0,0,0)
		Frame.Size = UDim2.new(1,0,1,0)
		return Frame
	end
	if Name == "head" then
		local Frame = Instance.new("Frame")
		
		Frame.Name = "head"
		Label.BorderSizePixel = 0
		Frame.BackgroundTransparency = 1
		Frame.BackgroundColor3 = Color3.new(1,1,1)
		Frame.BorderColor3 = Color3.new(0,0,0)
		Frame.Size = UDim2.new(1,0,1,0)
		return Frame
	end
	if Name == "body" then
		local Frame = Instance.new("ScrollingFrame")
		local List = Instance.new("UIListLayout")
		
		List.Parent = Frame
		
		Frame.Name = "body"
		Frame.BorderSizePixel = 0
		Frame.ScrollBarThickness = 4
		Frame.ScrollBarImageColor3 = Color3.new(0,0,0)
		Frame.BackgroundColor3 = Color3.new(1,1,1)
		Frame.BorderColor3 = Color3.new(1,1,1)
		Frame.Size = UDim2.new(1,0,1,0)
		Frame.CanvasSize = UDim2.new(0,0,0,0)
		Frame.AutomaticCanvasSize = Enum.AutomaticSize.Y
		Frame.ScrollingDirection = Enum.ScrollingDirection.Y
		return Frame
	end
	if Name == "p" then
		local Label = Instance.new("TextLabel")
		
		Label.RichText = true
		Label.BorderSizePixel = 0
		Label.BackgroundTransparency = 1
		Label.BackgroundColor3 = Color3.new(1,1,1)
		Label.BorderColor3 = Color3.new(0,0,0)
		Label.TextColor3 = Color3.new(0,0,0)
		
		Label.Text = arg[1]
		Label.Size = UDim2.new(1,0,0,Label.TextBounds.y)
		return Label
	end
end

return Module

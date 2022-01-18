local Http = game:GetService("HttpService")
local Scope = "https://raw.githubusercontent.com/TTHHKKYY/vsb-html/main/"

local function Include(x)
	local File = Http:GetAsync(Scope .. x)
	local Compiled,Error = loadstring(File)
	
	if Compiled then
		return Compiled()
	else
		error(Error)
	end
end

local XML = Include("/src/include/xml.lua")
local Objects = Include("/src/include/objects.lua")

local Board = Instance.new("Part")
local Interface = Instance.new("SurfaceGui")
local Container = Instance.new("Frame")

Container.BackgroundTransparency = 1
Container.BackgroundColor3 = Color3.new()
Container.BorderColor3 = Color3.new()
Container.Size = UDim2.new(1,0,1,0)
Container.Parent = Interface

Interface.PixelsPerStud = 100
Interface.Face = Enum.NormalId.Front
Interface.Parent = Board

Board.Anchored = true
Board.Anchored = true
Board.Color = Color3.new(1,1,1)
Board.Size = Vector3.new(16,9,1)
Board.CFrame = CFrame.new(0,4,-30) * CFrame.Angles(0,math.rad(180),0)
Board.TopSurface = Enum.SurfaceType.Smooth
Board.BottomSurface = Enum.SurfaceType.Smooth
Board.Parent = workspace

local Parser = Xml.new()
local File = Parser:ParseXmlText(Http:GetAsync(Scope .. "/src/test.html"))

print(File)

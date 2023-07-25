local Explorer = {}
local Methods = import("modules/Explorer")

if not hasMethods(Methods.RequiredMethods) then
    return Explorer
end

local List, ListButton = import("ui/controls/List");
local MessageBox, MessageType = import("ui/controls/MessageBox")

local Assets = import("rbxassetid://5042114982").Explorer;

local Base = import("rbxassetid://11389137937").Base;
local Body = Base.Body;
local ExplorerFrame = Body.Explorer;

local ListClip = Explorer.Clip;
local ExplorerContents = ListClip.Contents;

local Query = ExplorerFrame.Query;
local Search = Query.Search;

local ExplorerList, ExplorerButton = List.new(ExplorerContents);

Assets.KeyNode.Children:Destroy();
Assets.KeyNode.Collapse:Destroy();

local Log = {};

function Log.new(Actor)
    local log = {};

    local Button = Assets.KeyNode:Clone();

    Button.Name = Actor.Name;
    Button:FindFirstChild("Name").Text = Actor.Name

    Button.Visible = true;

    local ListButton = ListButton.new(Button, ExplorerList);

    --ListButton:SetCallback(function()

    --end)

    log.Button = ListButton;

    return log
end

local RefreshActors = function()
    local CurrentActors = Methods.GetActors();

    for i,v in next, CurrentActors do
        if Actors[v] then continue end;
        Actors[v] = Log.new(v);
    end

    ExplorerList:Recalculate() 
end

Methods.OnActorCreated:Connect(function(Actor)
    RefreshActors();
end)

RefreshActors();

return Explorer
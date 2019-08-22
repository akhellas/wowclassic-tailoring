-- local frame = CreateFrame("FRAME", "Liquid");
-- frame:RegisterEvent("PLAYER_ENTERING_WORLD");

-- local function eventHandler(self, event, ...)
--     print("Hello world! Hello " .. event);
-- end

-- frame:SetScript("OnEvent", eventHandler);

LiquidTrainingAddon = {}
local mod = LiquidTrainingAddon;

mod.frame = CreateFrame("Frame");
mod.tailoring = {};

tailoring.levels = {
    [75]=5, 
    [150]=10, 
    [225]=30, 
    [300]=40
};

tailoring.mats = {
    ["Linen Cloth"] = 160,
    ["Coarse Thread"] = 75,
    ["Wool Cloth"] = 180,
    ["Fine Thread"] = 80,
    ["Gray Dye"] = 5,
    ["Silk Cloth"] = 760,
    ["Red Dye"] = 60,
    ["Blue Dye"] = 30,
    ["Mageweave Cloth"] = 70,
    ["Silken Thread"] = 125,
    ["Runecloth"] = 900,
    ["Rugged Leather"] = 50,
    ["Rune Thread"] = 40,
    ["Bolt of Linen Cloth"] = 70,
    ["Bolt of Woolen Cloth"] = 55,
    ["Bolt of Silk Cloth"] = 195,
    ["Bolt of Mageweave"] = 70,
    ["Bolt of Runecloth"] = 150
};

tailoring.skill = {
    [50] = { item="Bolt of Linen Cloth", count=80 },
    [70] = { item="Linen Bag", count=20 },
    [75] = { item="Reinforced Linen Cloak", count=5 },
    [105] = { item="Bolt of Woolen Cloth", count=60 },
    [110] = { item="Gray Woolen Shirt", count=5 },
    [125] = { item="Double-Stitched Woolen Shoulders", count=15 },
    [145] = { item="Bolt of Silk Cloth", count=190 },
    [160] = { item="Azure Silk Hood", count=15 },
    [170] = { item="Silk Headband", count=10 },
    [175] = { item="Formal White Shirt", count=5 },
    [185] = { item="Bolt of Mageweave", count=100 },
    [200] = { item="Crimson Silk Vest", count=15 },
    [215] = { item="Crimson Silk Pantaloons", count=15 },
    [220] = { item="Black Mageweave Leggings", count=5 },
    [230] = { item="Black Mageweave Gloves", count=10 },
    [250] = { item="Black Mageweave Headband", count=20 },
    [260] = { item="Bolt of Runecloth", count=180 },
    [275] = { item="Runecloth Belt", count=15 },
    [280] = { item="Runecloth Bag", count=5 },
    [300] = { item="Runecloth Gloves", count=20 },
};

skill[50] = "Bolt of Linen Cloth";
skill[70] = "Linen Bag";
skill

function events:PLAYER_ENTERING_WORLD(...)
    print("PLAYER_ENTERING_WORLD");
end

function events:PLAYER_LEAVING_WORLD(...)
    print("PLAYER_LEAVING_WORLD");
end

function events:BAG_UPDATE(...)
    print("BAG_UPDATE");
end

function events:ITEM_PUSH(...)
    print("ITEM_PUSH");
end

function events:UNIT_INVENTORY_CHANGED(...)
    print("UNIT_INVENTORY_CHANGED");
end

function events:CHAT_MSG_MONEY(...)
    print("CHAT_MSG_MONEY");
end

function events:CHAT_MSG_COMBAT_XP_GAIN(...)
    print("CHAT_MSG_COMBAT_XP_GAIN");
end

function events:PLAYER_LEVEL_UP(...)
    print("PLAYER_LEVEL_UP");
end

function events:PLAYER_MONEY(...)
    print("PLAYER_MONEY");
end

function events:PLAYER_XP_UPDATE(...)
    print("PLAYER_XP_UPDATE");
end

frame:SetScript("OnEvent", function(self, event, ...)
    events[event](self, ...);
end);

for k, v in pairs(events) do
    mod.frame:RegisterEvent(k);
end


SLASH_LIQUID1, SLASH_LIQUID2 = '/lqt', '/liquidtraining';

function SlashCmdList.LIQUID(msg, editbox)
    print("slash: " msg);
end
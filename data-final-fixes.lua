local scale_factor = settings.startup["scale-factor"].value
local only_vanilla = settings.startup["only-vanilla"].value
local affect_pipes = settings.startup["affect-pipes"].value
local affect_underground_pipes = settings.startup["affect-underground-pipes"].value
local affect_pumps = settings.startup["affect-pumps"].value
local affect_tanks = settings.startup["affect-tanks"].value
local keys_to_check = {}

local function rescale_fluid_box(object)
    local fluid_box = object.fluid_box
    fluid_box.height = (fluid_box.height or 1) * scale_factor
    fluid_box.base_area = (fluid_box.base_area or 1) / scale_factor
end

if affect_pipes then
    table.insert(keys_to_check, "pipe")
end
if affect_underground_pipes then
    table.insert(keys_to_check, "pipe-to-ground")
end
if affect_pumps then
    table.insert(keys_to_check, "pump")
end
if affect_tanks then
    table.insert(keys_to_check, "storage-tank")
end

if only_vanilla then
    for _, key in pairs(keys_to_check) do
        log("Modifying " .. key)
        rescale_fluid_box(data.raw[key][key])
    end
else
    for _, key in pairs(keys_to_check) do
        for _, pipe in pairs(data.raw[key]) do
            local fluid_box = pipe.fluid_box
            fluid_box.height = (fluid_box.height or 1) * scale_factor
            fluid_box.base_area = (fluid_box.base_area or 1) / scale_factor
        end
    end
end

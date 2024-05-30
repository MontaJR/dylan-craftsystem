

local QBCore = exports['qb-core']:GetCoreObject()

local zoneName = "randomZone"
local zoneLength = 3.0
local zoneWidth = 3.0
local heading = 0

exports.ox_target:addBoxZone({
    coords = Config.CoordenadasCrafteo,
    size = vector3(zoneLength, zoneWidth, 2.0),
    rotation = heading,
    debug = false,  
    options = {
        {
            name = zoneName,
            icon = "fa-solid fa-martini-glass-citrus", 
            label = "Craftear Items",
            groups = Config.Trabajos,  -- Trabajos permitidos pra hacer la acción.
            event = "dylan-locales:abrirDialogo",
        }
    }
})

RegisterNetEvent('startProgressBarClient')
AddEventHandler('startProgressBarClient', function()
    exports['progressbar']:Progress({
        name = "random_task",
        duration = 7500,
        label = "Cocinando comida...",
        useWhileDead = false,
        canCancel = false,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "mp_car_bomb",
            anim = "car_bomb_mechanic",
            flags = 49,
        },
        prop = {},
        propTwo = {}
     }, function(cancelled)
     end)
end)



-- MENU GENERAL

AddEventHandler('dylan-locales:abrirDialogo', function()
	local input = lib.inputDialog("Craftear Comida", {
        {type = "select", label = "Selecciona el plato que quieras", options = {
            {value = "Opcion1", label = Config.TituloComida1}, -- Hamburgesa
            {value = "Opcion2", label = Config.TituloComida2}, -- Salchipapa
            {value = "Opcion3", label = Config.TituloComida3} -- Kebab
        }}
    })
    if input then 
        Plato = input[1]
        TriggerServerEvent('dylan-locales:enviarDatos', Plato)
    end
end)



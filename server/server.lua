

local QBCore = exports['qb-core']:GetCoreObject()

-- Evento de craftear

RegisterNetEvent('dylan-locales:enviarDatos')
AddEventHandler('dylan-locales:enviarDatos', function(Plato)

	local src = source 
	local xPlayer = QBCore.Functions.GetPlayer(src)
	local tiene = true

	local lista1 = {
		{name = Config.ItemNecesarioParaCraftear1, amount = Config.CantidadNecesariaParaCraftear1},
		{name = Config.ItemNecesarioParaCraftear2, amount = Config.CantidadNecesariaParaCraftear2},
		{name = Config.ItemNecesarioParaCraftear3, amount = Config.CantidadNecesariaParaCraftear3},
		{name = Config.ItemNecesarioParaCraftear4, amount = Config.CantidadNecesariaParaCraftear4},
	}
	local lista2 = {
		{name = Config.ItemNecesarioParaCraftear5, amount = Config.CantidadNecesariaParaCraftear5},
		{name = Config.ItemNecesarioParaCraftear6, amount = Config.CantidadNecesariaParaCraftear6},
		{name = Config.ItemNecesarioParaCraftear7, amount = Config.CantidadNecesariaParaCraftear7},
		{name = Config.ItemNecesarioParaCraftear8, amount = Config.CantidadNecesariaParaCraftear8},
	}
	local lista3 = {
		{name = Config.ItemNecesarioParaCraftear9, amount = Config.CantidadNecesariaParaCraftear9},
		{name = Config.ItemNecesarioParaCraftear10, amount = Config.CantidadNecesariaParaCraftear10},
		{name = Config.ItemNecesarioParaCraftear11, amount = Config.CantidadNecesariaParaCraftear11},
		{name = Config.ItemNecesarioParaCraftear12, amount = Config.CantidadNecesariaParaCraftear12},
	}
	

if Plato == 'Opcion1' then 
	if xPlayer then 
		for _, item in ipairs(lista1) do
			local ingredientes = xPlayer.Functions.GetItemByName(item.name)
			if not ingredientes or ingredientes.amount < item.amount then 
				print("No tiene ingredientes el jugador")
				TriggerClientEvent('QBCore:Notify', src, "No tienes suficientes ingredientes!")
				tiene = false 
				break 
		end
	end
	if tiene then 
			TriggerClientEvent('startProgressBarClient', src)
		xPlayer.Functions.AddItem(Config.ItemResultadoCrafteo1, 1)
		xPlayer.Functions.RemoveItem(Config.ItemNecesarioParaCraftear1, Config.CantidadNecesariaParaCraftear1)
		xPlayer.Functions.RemoveItem(Config.ItemNecesarioParaCraftear2, Config.CantidadNecesariaParaCraftear2)
		xPlayer.Functions.RemoveItem(Config.ItemNecesarioParaCraftear3, Config.CantidadNecesariaParaCraftear3)
		xPlayer.Functions.RemoveItem(Config.ItemNecesarioParaCraftear4, Config.CantidadNecesariaParaCraftear4)
		TriggerClientEvent('QBCore:Notify', src, "Has crafteado satisfactoriamente " .. Config.ItemResultadoCrafteo1 .. "")
	end
end

elseif Plato == 'Opcion2' then 
	if xPlayer then 
		for _, item in ipairs(lista2) do
			local ingredientes = xPlayer.Functions.GetItemByName(item.name)
			if not ingredientes or ingredientes.amount < item.amount then 
				print("No tiene ingredientes el jugador")
				tiene = false 
				break 
		end
	end
	if tiene then 
		TriggerClientEvent('startProgressBarClient', src)
		xPlayer.Functions.AddItem(Config.ItemResultadoCrafteo2, 1)
		xPlayer.removeInventoryItem(Config.ItemNecesarioParaCraftear5, Config.CantidadNecesariaParaCraftear5)
		xPlayer.removeInventoryItem(Config.ItemNecesarioParaCraftear6, Config.CantidadNecesariaParaCraftear6)
		xPlayer.removeInventoryItem(Config.ItemNecesarioParaCraftear7, Config.CantidadNecesariaParaCraftear7)
		xPlayer.removeInventoryItem(Config.ItemNecesarioParaCraftear8, Config.CantidadNecesariaParaCraftear8)
		TriggerClientEvent('QBCore:Notify', src, "Has crafteado satisfactoriamente " .. Config.ItemResultadoCrafteo2 .. "")
	end
end

elseif Plato == 'Opcion3' then 
	if xPlayer then 
		for _, item in ipairs(lista3) do
			local ingredientes = xPlayer.Functions.GetItemByName(item.name)
			if not ingredientes or ingredientes.amount < item.amount then 
				print("No tiene ingredientes el jugador")
				tiene = false 
				break 
		end
	end
	if tiene then 
		TriggerClientEvent('startProgressBarClient', src)
		xPlayer.Functions.AddItem(Config.ItemResultadoCrafteo3, 1)
		xPlayer.removeInventoryItem(Config.ItemNecesarioParaCraftear9, Config.CantidadNecesariaParaCraftear9)
		xPlayer.removeInventoryItem(Config.ItemNecesarioParaCraftear10, Config.CantidadNecesariaParaCraftear10)
		xPlayer.removeInventoryItem(Config.ItemNecesarioParaCraftear11, Config.CantidadNecesariaParaCraftear11)
		xPlayer.removeInventoryItem(Config.ItemNecesarioParaCraftear12, Config.CantidadNecesariaParaCraftear12)
		TriggerClientEvent('QBCore:Notify', src, "Has crafteado satisfactoriamente " .. Config.ItemResultadoCrafteo3 .. "")
	end
end
end
end)
		



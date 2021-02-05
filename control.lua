local function AddBotsToInventory(e)
	local player = game.players[e.player_index]	
	
	if not player.get_main_inventory() then return end
	
	local inventory = player.get_inventory(defines.inventory.character_armor)
	inventory.insert{name="power-armor-mk2", count = 1}
	
	local suit = player.get_inventory(defines.inventory.character_armor)[1].grid
	suit.put({name = "fusion-reactor-equipment"})
	suit.put({name = "fusion-reactor-equipment"})
	suit.put({name = "fusion-reactor-equipment"})
	suit.put({name = "fusion-reactor-equipment"})
	suit.put({name = "exoskeleton-equipment"})
	suit.put({name = "personal-roboport-mk2-equipment"})
	suit.put({name = "personal-roboport-mk2-equipment"})
	suit.put({name = "personal-roboport-mk2-equipment"})
	suit.put({name = "personal-roboport-mk2-equipment"})
	suit.put({name = "battery-mk2-equipment"})
	suit.put({name = "battery-mk2-equipment"})
	suit.put({name = "battery-mk2-equipment"})
	suit.put({name = "battery-mk2-equipment"})
	suit.put({name = "night-vision-equipment"})
	player.insert{name="construction-robot", count = 100}
	player.insert{name="iron-plate", count = 1000}
	player.insert{name="copper-plate", count = 500}
end

local function player_created(e)
  AddBotsToInventory(e)
end

local function cutscene_cancelled(e)
  if remote.interfaces["freeplay"] then   -- Added for 1.0 freeplay cutscene
    AddBotsToInventory(e)
  end
end

script.on_event(defines.events.on_player_created, player_created)
script.on_event(defines.events.on_cutscene_cancelled, cutscene_cancelled)

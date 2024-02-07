script.on_event(defines.events.on_worker_robot_expired,
	function(event)
		local location = robot.position
		local sound_id = math.random(1, 8)
			game.play_sound({ path = "screambots-scream-" .. tostring(sound_id), volume_modifier = 1, position = location})
	end
)
script.on_event(defines.events.on_entity_died,
	function(event)
		local dead_entity = event.entity
		if dead_entity.name=="logistic-robot" then
			local location = dead_entity.position
			local sound_id = math.random(1, 8)
			game.play_sound({ path = "screambots-scream-" .. tostring(sound_id), volume_modifier = 1, position = location})
		end
	end
)
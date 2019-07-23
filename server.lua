--------------------------
--- DiscordWeaponPerms ---
--------------------------
roleList = {
577968852852539392, -- Trusted Civ (1)
577661583497363456, -- Donator (2)
599031049955180579, -- Personal (3)
506213297389830162, -- Staff (4)
577631197987995678, -- T-Mod (5)
506211787214159872, -- Mod (6)
506212543749029900, -- Admin (7)
577966729981067305, -- Management (8)
506212786481922058, -- Owner (9)
}

RegisterNetEvent('Print:PrintDebug')
AddEventHandler('Print:PrintDebug', function(msg)
	print(msg)
	TriggerClientEvent('chatMessage', -1, "^7[^1Badger's Scripts^7] ^1DEBUG ^7" .. msg)
end)

RegisterNetEvent("DiscordWeaponPerms:CheckPerms")
AddEventHandler("DiscordWeaponPerms:CheckPerms", function()
	local src = source
	for k, v in ipairs(GetPlayerIdentifiers(src)) do
		if string.sub(v, 1, string.len("discord:")) == "discord:" then
			identifierDiscord = v
		end
	end
	local hasPerms = {} -- Has perms for indexes:
	if identifierDiscord then
		local roleIDs = exports.discord_perms:GetRoles(src)
		-- Loop through roleList and set their role up:
		if not (roleIDs == false) then
			for i = 1, #roleList do
				for j = 1, #roleIDs do
					local roleID = roleIDs[j]
					if (tostring(roleList[i]) == tostring(roleID)) then
						table.insert(hasPerms, i)
					end
				end
			end
		else
			print(GetPlayerName(src) .. " has not gotten their permissions cause roleIDs == false")
		end
	end
	TriggerClientEvent('DiscordWeaponPerms:CheckPerms:Return', src, hasPerms)
end)
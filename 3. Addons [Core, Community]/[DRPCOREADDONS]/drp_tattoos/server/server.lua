local tattoosList = {}

-- Ya mum is gay bruv
RegisterServerEvent("DRP_Tattoos:GetTattoos")
AddEventHandler("DRP_Tattoos:GetTattoos", function()
	local src = source
	local character = exports["drp_id"]:GetCharacterData(src)
	exports["externalsql"]:DBAsyncQuery({
		string = "SELECT * FROM `character_tattoos` WHERE `char_id` = :charid",
		data = {
			charid = character.charid
		}
	}, function(tattoosResults)
			if(json.encode(tattoosResults["data"]) ~= "[]") then
				local allTattoos = json.decode(tattoosResults["data"][1].tattoos)
				TriggerClientEvent("DRP_Tattoos:CharacterTattoos", src, allTattoos)
			else
				local tattooValue = json.encode({})
				exports["externalsql"]:DBAsyncQuery({
					string = "INSERT INTO `character_tattoos` SET `tattoos` = :tattoos, `char_id` = :charid",
					data = {
						tattoos = tattooValue,
						charid = character.charid
					}
				}, function(yeet)
				TriggerClientEvent("DRP_Tattoos:CharacterTattoos", src, {})
			end)
		end
	end)
end)

RegisterServerEvent("DRP_Tattoos:SaveTattoos")
AddEventHandler("DRP_Tattoos:SaveTattoos", function(tattoosList, price, value)
	local src = source
	local character = exports["drp_id"]:GetCharacterData(src)
		TriggerEvent("DRP_Bank:GetCharacterMoney", character.charid, function(characterMoney)
		if characterMoney.data[1].cash >= price then
			TriggerEvent("DRP_Bank:RemoveCashMoney", src, price)
			table.insert(tattoosList, value)
				exports["externalsql"]:DBAsyncQuery({
					string = "UPDATE character_tattoos SET `tattoos` = :tattoos WHERE `char_id` = :charid",
					data = {
						tattoos = json.encode(tattoosList),
						charid = character.charid
					}
				}, function(yeetTattooddddd)
				end)
				exports["externalsql"]:DBAsyncQuery({
					string = "SELECT * FROM `character_tattoos` WHERE `char_id` = :charid",
					data = {
						charid = character.charid
					}
				}, function(tattoosResults)
				local allTattoos = json.decode(tattoosResults["data"][1].tattoos)
				TriggerClientEvent("DRP_Tattoos:CharacterTattoos", src, allTattoos)
				TriggerClientEvent("DRP_Core:Success", src, "Tattoos", "You just bought a Tattoo", 2500, false, "leftCenter")
			end)
		else
			TriggerClientEvent("DRP_Core:Error", src, "Tattoos", "You don't have enough money!", 2500, false, "leftCenter")
		end
	end)
end)

RegisterServerEvent("DRP_Tattoos:PutClothesBackOn")
AddEventHandler("DRP_Tattoos:PutClothesBackOn", function()
	local src = source
	TriggerEvent("clothing_shop:ResetClothing", src)
end)
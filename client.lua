Citizen.CreateThread(function()
	while true do
	local count = 0

local text = {
"??ProjectRP??",
"Novy Server",
"Aktivny A-Team"
}
		for _, __ in pairs(text) do 
			count = count + 1
		end
			
		local presence  = math.random(1, count)
		local player = GetPlayerPed(-1)

		SetDiscordAppId('yourappid')
		SetDiscordRichPresenceAsset('big') -- Name of the image.
	        SetDiscordRichPresenceAssetText('ProjectRP') -- Text that pops up when you hover over the image.
                SetDiscordRichPresenceAssetSmall('zua') -- Name of the small image.
		SetDiscordRichPresenceAssetSmallText('https://discord.gg/HjydAxmu2X') -- Name of the small tsext.
                SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/HjydAxmu2X") -- Button 1 and link

		while true do
        Citizen.Wait(1500)
        players = {}
        for i = 0, 128 do
            if NetworkIsPlayerActive( i ) then
                table.insert( players, i )
            end
        end
        SetRichPresence("‍AS | "..GetPlayerName(PlayerId()) .. " - ID: " ..GetPlayerServerId(PlayerId()).. " - " .. #players + 0 .. "/32 Hráčů		")

	end

	--	SetRichPresence((GetPlayerName(PlayerId())) .. " -") -- [Steam username] [text]
	--	SetRichPresence("".. text[presence] .."")  -- [text]
		SetDiscordRichPresenceAssetText('https://discord.gg/UWQTPbW')
		print('^5Discord rich presence mis a jour :D')
		Citizen.Wait(300000) -- 5 minutes 
	end
end)

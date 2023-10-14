AddCSLuaFile('TTclient.lua')


util.AddNetworkString("Status")


hook.Add("PlayerSay", "ativar_poder", function(ply, txt, team)
	if txt:lower() == '!on' then
		ply:SetHealth(5000)
        ply:SetRunSpeed(1200)
        ply:SetJumpPower(600)

        net.Start('Status')
            net.WriteBool(true)
        net.Send(ply)
	end

    if txt:lower() == '!off' then
		ply:SetHealth(100)  
        ply:SetRunSpeed(500)
        ply:SetJumpPower(200)

        net.Start('Status')
            net.WriteBool(false)
        net.Send(ply)
    end
	
end)
local AllowedGroup = {
	["superadmin"] = true,
	["admin"] = true,
}

hook.Add("PlayerSay", "PlayerSay:VampireCommande", function(ply, txt)
	if string.sub(txt, 1, string.len("/vamp")) == "/vamp" then
		local message = string.Explode( "/vamp ", txt )[2]

		for k,v in ipairs(player.GetAll()) do 
			if AllowedGroup[v:GetNWString("usergroup")] then   
				DarkRP.talkToPerson(v, Color(255, 0, 0, 255),  "[Radio Vampire] " .. ply:Nick() .. " " , Color(255, 255, 255, 255), message, ply)
			else
				DarkRP.talkToPerson(v, Color(255, 0, 0, 255),  "[Radio Vampire] " .. ply:Nick() .. " " , Color(255, 255, 255, 255), message, ply) 
			end
        	end
        	return ""
	end
end)
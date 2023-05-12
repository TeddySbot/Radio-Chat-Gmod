local AllowedGroup = {
	["superadmin"] = true,
	["admin"] = true,
}

hook.Add("PlayerSay", "PlayerSay:AnoCommande", function(ply, txt)
	if string.sub(txt, 1, string.len("/ano")) == "/ano" then
		local message = string.Explode( "/ano ", txt )[2]

		for k,v in ipairs(player.GetAll()) do 
			if AllowedGroup[v:GetNWString("usergroup")] then   
				DarkRP.talkToPerson(v, Color(0, 0, 0, 255),  "[Radio Neutre] ", Color(255, 255, 255, 255), message, ply)
			else
				DarkRP.talkToPerson(v, Color(0, 0, 0, 255),  "[Radio Neutre] ", Color(255, 255, 255, 255), message, ply) 
			end
        	end
        	return ""
	end
end)
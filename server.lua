function cRP.characterChosen(user_id)
    local source = source
    vRP.prepare("fixExploitPersonagem","SELECT steam FROM summerz_characters WHERE id = @id")
    local getSteam = vRP.query("fixExploitPersonagem",{ id = user_id})
    local steam = vRP.getIdentities(source)
    -- print(steam,getSteam,getSteam[1],getSteam[1]["steam"])
    if getSteam[1] then
        if steam == getSteam[1]["steam"] then
            vRP.characterChosen(source,parseInt(user_id),nil)
            -- print("Logou normalmente")
        else
            vRP.execute("banneds/insertBanned",{ steam = steam, days = 999 })
            DropPlayer(source, "[BANIDO] HOJE NÃO!")
            -- print("Usuário malicioso")
        end
    end
end

-- function cRP.characterChosen(user_id)
--     local source = source
--     vRP.characterChosen(source,parseInt(user_id),nil)
-- end

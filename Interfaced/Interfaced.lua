local main = function()
    PlayerFrame:ClearAllPoints()
    PlayerFrame:SetPoint("CENTER", -350, 100)

    TargetFrame:ClearAllPoints()
    TargetFrame:SetPoint("CENTER", 350, 100)

    for i = 1, 4 do
        local frame = _G["PartyMemberFrame"..i]
        frame:SetScript("OnShow", frame.Hide)
    end
end

local ef = CreateFrame("frame")
    ef:RegisterEvent("PLAYER_ENTERING_WORLD")
    ef:SetScript("OnEvent", function(self)
    main()
    main = nil
    self:UnregisterEvent("PLAYER_ENTERING_WORLD")
    self:SetScript("OnEvent", nil)
end)

local main = function()
    PlayerFrame:ClearAllPoints()
    PlayerFrame:SetPoint("CENTER", -350, 100)

    TargetFrame:ClearAllPoints()
    TargetFrame:SetPoint("CENTER", 350, 100)

    PartyMemberFrame1:SetScript("OnEvent", nil);
    PartyMemberFrame1:Hide()
    PartyMemberFrame2:SetScript("OnEvent", nil);
    PartyMemberFrame2:Hide()
    PartyMemberFrame3:SetScript("OnEvent", nil);
    PartyMemberFrame3:Hide()
    PartyMemberFrame4:SetScript("OnEvent", nil);
    PartyMemberFrame4:Hide()
end

local ef = CreateFrame("frame")
    ef:RegisterEvent("PLAYER_ENTERING_WORLD")
    ef:SetScript("OnEvent", function(self)
    main()
    main = nil
    self:UnregisterEvent("PLAYER_ENTERING_WORLD")
    self:SetScript("OnEvent", nil)
end)

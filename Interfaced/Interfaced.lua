local main = function()
    PlayerFrame:ClearAllPoints()
    PlayerFrame:SetPoint("CENTER", -350, 100)

    TargetFrame:ClearAllPoints()
    TargetFrame:SetPoint("CENTER", 350, 100)

    for i = 1, 4 do
        local frame = _G["PartyMemberFrame"..i]
        frame:SetScript("OnShow", frame.Hide)
    end

    if (PetFrame) then
        PetFrame:ClearAllPoints()
        PetFrame:SetPoint("CENTER", PlayerFrame, "CENTER", 59, 52)
    end

    if (TotemFrame) then
        TotemFrame:ClearAllPoints()
        TotemFrame:SetPoint("CENTER", PlayerFrame, "CENTER", 45, 48)
    end

    CastingBarFrame:SetScale(0.65)
    CastingBarFrameBorder:SetTexture(nil)
    CastingBarFrameFlash:SetTexture(nil)
    CastingBarFrame:ClearAllPoints()
    CastingBarFrame:SetPoint("CENTER", PlayerFrame, "CENTER", 75, -40)
    CastingBarFrame.SetPoint = function() end
end

local ef = CreateFrame("frame")
    ef:RegisterEvent("PLAYER_ENTERING_WORLD")
    ef:SetScript("OnEvent", function(self)
    main()
    main = nil
    self:UnregisterEvent("PLAYER_ENTERING_WORLD")
    self:SetScript("OnEvent", nil)
end)

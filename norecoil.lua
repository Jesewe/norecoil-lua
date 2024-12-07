-- NoRecoil Script for Logitech Mouse in CS2
-- Use this at your own risk.

-- Settings
local fireKey = "1"          -- Left mouse button for firing
local isRecoilEnabled = true -- Toggle for enabling or disabling recoil control
local recoilPattern = {      -- Customize the recoil pattern (y-axis movements)
    5, 5, 5, 4, 4, 4, 3, 3, 3, 2, 2, 2, 1, 1, 1
}
local delay = 100            -- Delay in ms between movements

-- Function to control recoil
function recoilControl()
    if not isRecoilEnabled then
        return
    end

    for i = 1, #recoilPattern do
        if IsMouseButtonPressed(fireKey) then
            MoveMouseRelative(0, recoilPattern[i])
            Sleep(delay)
        else
            break
        end
    end
end

-- Main loop
EnablePrimaryMouseButtonEvents(true)

function OnEvent(event, arg)
    if event == "MOUSE_BUTTON_PRESSED" and arg == tonumber(fireKey) then
        recoilControl()
    end
end
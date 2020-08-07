import ('TemBot.Lua.TemBotLua')

--Registering the Temtem Window
tblua:RegisterTemTemWindow()

tblua:GetAreaColor()

i = 0

tblua:Sleep(1500)

if tblua:IsInWorld() == true then

 while(true)
 do
        tblua:Sleep(100)
        --check pause and logout user settings
        tblua:CheckPause()
        tblua:CheckLogout()
        if tblua:IsInWorld() == true then

        while tblua:IsInWorld() == true
        do
            --Rebuy TemCards
            if i > 30 then
                tblua:KeyDown(0x57)
                tblua:Sleep(3000)
                tblua:Sleep(300)
                tblua:PressKey(0x38)
                tblua:KeyDown(0x57)
                tblua:Sleep(3000)
                tblua:Sleep(300)
                tblua:PressKey(0x38)
                if tblua:IsInFight() == false then
                    tblua:PressKey(0x58)
                    tblua:Sleep(500)
                    tblua:PressKey(0x57)
                    tblua:Sleep(500)
                    tblua:PressKey(0x46)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x46)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x53)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x53)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x46)
                    tblua:Sleep(1000)
                    if tblua:IsInWorld() == false then
                        --Rebuy Amount
                        tblua:PressKey(0x35)
                        tblua:Sleep(500)
                        tblua:PressKey(0x30)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x46)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x1B)
                        i = 0
                    end
                end
            end
        local Sleep = math.random(500, 800)
        local MovementSwitch = math.random(2)
        --random top down delay
        if MovementSwitch == 1 then
            tblua:KeyDown(0x57)
            tblua:Sleep(Sleep)
            tblua:KeyUp(0x57)
            MovementSwitch = 2
        elseif MovementSwitch == 2 then
            tblua:KeyDown(0x53)
            tblua:Sleep(Sleep)
            tblua:KeyUp(0x53)
            MovementSwitch = 1
            end
            end
            tblua:StopMovement()

            --loop if minimap not detected
            while tblua:IsInWorld() == false
            do
            --if bot is in fight
            if tblua:IsInFight() == true then
                --Luma check positive (message and notification)
                if tblua:CheckLuma() == true then
                tblua:SendTelegramMessage("Luma Found!")
                tblua:TestMessage("Luma Found!")
                tblua:PressKey(0x71)
                else
                while tblua:IsInWorld() == false
                do
                if tblua:IsInFight() == true then
                    --Get Count of TemTem
                tblua:GetEnemyCount()
                 if tblua:GetEnemyCount() == 1 then
                    --Catch Release
                    tblua:Sleep(4000)
                    tblua:Attack()
                    tblua:Sleep(4000)
                    tblua:Attack()
                    tblua:Sleep(4000)
                    tblua:Catch()
                    tblua:Sleep(4000)
                    tblua:Catch()
                    tblua:Sleep(4000)
                    --Catch Counter
                    i = i + 1
                    tblua:WaitLoop(false)
                    tblua:Sleep(10000)
                    --Security F
                    tblua:PressKey(0x46)
                    break
                else
                    --Run Away
                    tblua:Sleep(500)
                    tblua:PressKey(0x38)
                    tblua:Sleep(500)
                    tblua:PressKey(0x38)

               end
            end
         end
      end
    end
    end
end
end
else
tblua:TestMessage('Error: Not ready to start the script')
end
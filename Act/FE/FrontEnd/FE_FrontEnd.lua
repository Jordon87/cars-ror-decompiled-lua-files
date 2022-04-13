FE_FrontEnd = {
        PushedStart = 0,

	ChangedState = function(self, state) 
		if (state == State_PreEvent) then
			DebugPrint("preevent")

			
		elseif (state == State_PreLoad) then
			DebugPrint("preload *****************************************************" )

		elseif (state == State_PreEventUI) then
			DebugPrint("preeventUI")

                        
		elseif (state == State_Begin) then		
		    DebugPrint("begin")

                    DoInitialStartup()
                    
                    if ( GetPlatform() != "x360" ) then
                        SetPlayerInputEnabled(1,0)
                        SetPlayerInputEnabled(0,1)
                    end
                    
                    RemoveEventListener(LE_PROFILES_DISABLED, "FE_FrontEnd")
                    SetEventListener(LE_PROFILES_DISABLED, "FE_FrontEnd")
                    
                    PlayCameraAnimationWithCallback("FrontEndCamera","Anim\\FECamStart","IdleCamFinished")
                    
                    PushMenu("FE_StoryModeMenu_2")
                    PushMenu("FE_ProfileButtons")
                    PushMenu("FE_CarsLogo")

                    RaiseMenu("FE_StartMenu")           

		elseif (state == State_Rollup) then
			DebugPrint("rollup")
		elseif (state == State_Countdown) then
			DebugPrint("countdown")
		elseif (state == State_Running) then
			DebugPrint("running")
		elseif (state == State_GameOver) then
			DebugPrint("gameover")
		elseif (state == State_End) then
                        RemoveEventListener(LE_PROFILES_DISABLED, "FE_FrontEnd")
		elseif (state == State_PostEvent) then
		elseif (state == State_PostEventUI) then	
		end
	end,

        LuaEventHandler = function(self, event, paramA, paramB, szInfo, result)
            DebugPrint("FE_FrontEnd: LuaEventHandler: " .. event .. "," .. paramA)
            
            if (event == LE_PROFILES_DISABLED and paramA == 1) then

                self:EventHandler("PressedStart")
                PlayCameraAnimation("FrontEndCamera","Anim\\FECam01")
                RaiseMenu("FE_MainMenu")

                FE_FrontEnd:EventHandler("PressedStart")
                                                                                                    
            end

        end,
    
        EventHandler = function(self, event) 

            DebugPrint("FE_FrontEnd: Event: " .. event)

            if (self.PushedStart == 0 and event == "IdleCamFinished") then
                SetEventTimer("StartIdleCam", 1.0)
            end

            if (self.PushedStart == 0 and event == "StartIdleCam") then              
                PlayCameraAnimationWithCallback("FrontEndCamera","Anim\\FECamStart","IdleCamFinished")
            end

            if (event == "PressedStart") then
                if (self.PushedStart == 0) then
                    self.PushedStart = 1
                    EnumerateProfiles()
                end

                if (FE_StartMenu ~= nil and FE_StartMenu.instance ~= nil) then
                    EndMenu(FE_StartMenu.instance)
                end
            end

            if (event == "DVDMenu_Unlock") then
                DVDMenu_Unlock()
            end
    
        end

}
FE_Intro = {
  ChangedState = function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == State_PreEvent then
      DebugPrint("preevent")
      if GetPlatform() == "x360" or GetPlatform() == "ps3" then
        _ARG_0_.srcMovieDir = "C\\Movies\\720\\"
      elseif IsDisplayModePAL() then
        _ARG_0_.srcMovieDir = "C\\Movies\\2500\\"
      else
        _ARG_0_.srcMovieDir = "C\\Movies\\2997\\"
      end
      QueueVideo("Disney", _ARG_0_.srcMovieDir)
      QueueVideo("Pixar", _ARG_0_.srcMovieDir)
      QueueVideo("THQ", _ARG_0_.srcMovieDir)
      QueueVideo("Incin", _ARG_0_.srcMovieDir)
      StartVideoQueue()
    elseif _ARG_1_ == State_PreEventUI then
      DebugPrint("preeventUI")
    elseif _ARG_1_ == State_Begin then
      DebugPrint("begin")
    elseif _ARG_1_ == State_Rollup then
      DebugPrint("rollup")
    elseif _ARG_1_ == State_Countdown then
      DebugPrint("countdown")
    elseif _ARG_1_ == State_Running then
      DebugPrint("running")
    elseif _ARG_1_ == State_GameOver then
      DebugPrint("gameover")
    elseif _ARG_1_ == State_End then
      SwitchActivity("FE_FrontEnd", "player1start")
    elseif _ARG_1_ == State_PostEvent then
    elseif _ARG_1_ == State_PostEventUI then
    end
  end
}

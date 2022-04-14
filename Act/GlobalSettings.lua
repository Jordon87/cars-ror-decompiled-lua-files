GlobalSettings = {
  WheelTimeExtend = 1.5,
  Gestures = {
    ps2 = {
      easy = {
        {
          "FlickLeftStick",
          "LeftStick"
        },
        {
          "FlickRightStick",
          "LeftStick"
        },
        {
          "FlickUpStick",
          "RightStick"
        },
        {
          "FlickDownStick",
          "LeftStick"
        }
      },
      medium = {
        {
          "RotateClockwiseStick",
          "LeftStick"
        },
        {
          "RotateClockwiseStick",
          "RightStick"
        }
      },
      hard = {
        "ABXY",
        "BXYA",
        {
          "RotateCounterClockwiseStick",
          "LeftStick"
        }
      },
      dodge = {
        {
          "FlickLeftStick",
          "LeftStick"
        },
        {
          "FlickRightStick",
          "LeftStick"
        },
        {
          "FlickLeftStick",
          "RightStick"
        },
        {
          "FlickRightStick",
          "RightStick"
        }
      },
      jump = {
        {
          "FlickUpStick",
          "LeftStick"
        },
        {
          "FlickUpStick",
          "RightStick"
        }
      }
    },
    sixaxis = {
      easy = {
        "FlickLeft",
        "FlickRight",
        "FlickUp",
        "FlickDown"
      },
      medium = {
        "Thrust",
        "TwistLeft",
        "TwistRight"
      },
      hard = {
        "RotateClockwise",
        "RotateCounterClockwise"
      },
      dodge = {"FlickLeft", "FlickRight"},
      jump = {"FlickUp"}
    },
    gcn = {
      easy = {
        "FlickLeft",
        "FlickRight",
        "FlickUp",
        "FlickDown"
      },
      medium = {
        "Thrust",
        "TwistLeft",
        "TwistRight"
      },
      hard = {
        "RotateClockwise",
        "RotateCounterClockwise"
      },
      dodge = {"FlickLeft", "FlickRight"},
      jump = {"FlickUp"}
    },
    x360 = {
      easy = {
        {
          "FlickLeftStick",
          "LeftStick"
        },
        {
          "FlickRightStick",
          "LeftStick"
        },
        {
          "FlickUpStick",
          "RightStick"
        },
        {
          "FlickDownStick",
          "LeftStick"
        }
      },
      medium = {
        {
          "RotateClockwiseStick",
          "LeftStick"
        },
        {
          "RotateClockwiseStick",
          "RightStick"
        }
      },
      hard = {
        {
          "RotateCounterClockwiseStick",
          "LeftStick"
        }
      },
      dodge = {
        {
          "FlickLeftStick",
          "LeftStick"
        },
        {
          "FlickRightStick",
          "LeftStick"
        },
        {
          "FlickLeftStick",
          "RightStick"
        },
        {
          "FlickRightStick",
          "RightStick"
        }
      },
      jump = {
        {
          "FlickUpStick",
          "LeftStick"
        },
        {
          "FlickUpStick",
          "RightStick"
        }
      }
    },
    x360_wheel = {
      easy = {"XYA", "YXB"},
      medium = {"ULRD", "ABXY"},
      hard = {
        "BXYA",
        "LUDR",
        "UDLR",
        "RLDU",
        "BXYA"
      },
      dodge = {"XYA", "YXB"},
      jump = {"XYA", "YXB"}
    }
  }
}
GlobalSettings.Gestures.ps3 = GlobalSettings.Gestures.ps2

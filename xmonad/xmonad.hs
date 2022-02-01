import XMonad

main = xmonad $ def
    { modMask = mod4Mask -- rebind Mod to the Windows key
    , terminal = "kitty"
    }

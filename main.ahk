^h::
targetColor := 0x369A2C

ColorMatch(color1, color2, tolerance := 10) {
    return (abs(((color1 >> 16) & 0xFF) - ((color2 >> 16) & 0xFF)) <= tolerance)
        && (abs(((color1 >> 8) & 0xFF) - ((color2 >> 8) & 0xFF)) <= tolerance)
        && (abs((color1 & 0xFF) - (color2 & 0xFF)) <= tolerance)
}

FindAndFollowColor:
    Loop
    {
        PixelGetColor, currentColor, MouseX, MouseY

        if (ColorMatch(currentColor, targetColor))
        {
            Click

            Sleep, 400
        }
        else
        {
            MouseGetPos, mouseX, mouseY

            movement (You can customize this part)
            SendInput, {W down}
            Sleep, 50
            SendInput, {A down}
            Sleep, 50
            SendInput, {W up}
            Sleep, 50
            SendInput, {D down}
            Sleep, 50
            SendInput, {A up}
            Sleep, 50
            SendInput, {S down}
            Sleep, 50
            SendInput, {D up}
            Sleep, 50

            Clickbc

            Sleep, 10000
        }
    }

return

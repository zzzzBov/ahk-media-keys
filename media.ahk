;
; Play Pause Skip
;

; Ctx + ← = Previous
AppsKey & Left::
    Send {Media_Prev}
Return

; Ctx + → = Next
AppsKey & Right::
    Send {Media_Next}
Return

; Ctx + ↑ = Play/Pause
AppsKey & Up::
    Send {Media_Play_Pause}
Return

; Ctx + ↓ = Stop
AppsKey & Down::
    Send {Media_Stop}
Return

; Ctx + Pause = Play/Pause
AppsKey & Pause::
    Send {Media_Play_Pause}
Return

;
; Volume Up, Volume Down
;

; Ctx + Page Up = Volume Up (2)
; Ctx + Shift + Page Up = Volume Up (10)
; Ctx + Ctrl + Page Up = Max Volume
AppsKey & PgUp::
    Send {Volume_Up}

    if GetKeyState("ctrl")
    {
        SoundSet, 100
    }
    else if GetKeyState("shift")
    {
        Send {Volume_Up 5}
    }
    else
    {
        Send {Volume_Up 1}
    }
Return

; Ctx + Page Down = Volume Down (2)
; Ctx + Shift + Page Down = Volume Down (10)
; Ctx + Ctrl + Page Down = Min Volume
AppsKey & PgDn::
    if GetKeyState("ctrl")
    {
        SoundSet, 0
    }
    else if GetKeyState("shift")
    {
        Send {Volume_Down 5}
    }
    else
    {
        Send {Volume_Down 1}
    }
Return

; Ctx + M = Mute
AppsKey & m::
    Send {Volume_Mute}
Return

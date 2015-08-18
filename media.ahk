; AHK Media Keys
; By: zzzzBov
;
; MIT License (http://zzzzbov.mit-license.org/)

;
; Play Pause Skip
;

; Menu + ← = Previous
AppsKey & Left::
    Send {Media_Prev}
Return

; Menu + → = Next
AppsKey & Right::
    Send {Media_Next}
Return

; Menu + ↑ = Play/Pause
AppsKey & Up::
    Send {Media_Play_Pause}
Return

; Menu + ↓ = Stop
AppsKey & Down::
    Send {Media_Stop}
Return

; Menu + Pause = Play/Pause
AppsKey & Pause::
    Send {Media_Play_Pause}
Return

;
; Volume Up, Volume Down
;

; Menu + Page Up = Volume Up (2)
; Menu + Shift + Page Up = Volume Up (10)
; Menu + Ctrl + Page Up = Max Volume
AppsKey & PgUp::
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

; Menu + Page Down = Volume Down (2)
; Menu + Shift + Page Down = Volume Down (10)
; Menu + Ctrl + Page Down = Min Volume
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

; Menu + M = Mute
AppsKey & m::
    Send {Volume_Mute}
Return

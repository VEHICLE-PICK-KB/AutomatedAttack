#Requires AutoHotkey v2.0
#SingleInstance Force

; =========================
;  KOORDINAATTI-POHJA (WINDOW MODE)
;  - Kaikki klikkaukset ovat koordinaateilla (ei ImageSearchiä)
;  - Koordinaatit ovat suhteessa AKTIIVISEEN IKKUNAAN (Window)
;  - F8 = aja klikkisarja
;  - Ctrl+Alt+J = näytä & loggaa hiiren X/Y (Window)
;  - Esc = stop
;  - Loki: C:\General\AUT\automation.log
; =========================

BASE_DIR := "C:\General\AUT"
LOG_FILE := BASE_DIR "\automationXY.log"


EXE_NAME := "crosvm.exe"     ; kohdesovelluksen exe (jätä "" jos et halua tarkistusta)
CLICK_DELAY := 100           ; viive steppien välissä (ms)

; Hätästoppi
Esc::ExitApp

; Ctrl+Alt+J: näytä ja loggaa koordinaatit aktiivisen ikkunan sisällä
^!j::{
    CoordMode "Mouse", "Window"
    MouseGetPos &x, &y
    ToolTip "Window X=" x "  Y=" y
    Log("MousePos (Window): X=" x " Y=" y)
    SetTimer () => ToolTip(), -1200
}

^!c::{  ; Ctrl+Alt+C
    CoordMode "Mouse", "Window"
    CoordMode "Pixel", "Window"
    MouseGetPos &x, &y
    col := PixelGetColor(x, y, "RGB")
    ToolTip "X=" x " Y=" y " Color=" Format("0x{:06X}", col)
    Log("PickColor: X=" x " Y=" y " Color=" Format("0x{:06X}", col))
    SetTimer () => ToolTip(), -1500
}

F9::Reload

; F8: aja automaatio (loop)
F8::{
    Log("=== Coord (Window) START ===")

    if (EXE_NAME != "" && !WinActive("ahk_exe " EXE_NAME)) {
        Log("ERROR: Target app not active: " EXE_NAME)
        MsgBox "Aktivoi ensin kohdesovellus: " EXE_NAME
        return
    }

    ToolTip "Coord automation running... (Esc = stop)"
    try {
        LOOP_DELAY := 3000  ; <-- tauko kierrosten välissä (ms)

        while true {
            Log("=== LOOP " A_Index " START ===")

            ; ==========================================
            ;  UUSI AUTOMAATION KLIKKISARJA (Window)
            ;  Lähde: testikierros 2025-12-24 21:13–21:14
            ; ==========================================

            ZoomWheel(17, "Down")
            Sleep 1000

            ClickAt(884, 787)
            Sleep 700

            ClickAt(97, 928)
            Sleep 700

            ClickAt(236, 723)
            Sleep 700

            ClickAt(1425, 803)
            Sleep 700

            ClickAt(1065, 682)
            Sleep 700

            ClickAt(1527, 866)
            Sleep 3000

            ZoomWheel(17, "Down")
            Sleep 600


            ClickAt(76, 941)
            Sleep CLICK_DELAY



            ClickAt(225 + Random(-3, 3), 414 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(285 + Random(-3, 3), 385 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(334 + Random(-3, 3), 354 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(378 + Random(-3, 3), 327 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(433 + Random(-3, 3), 291 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(487 + Random(-3, 3), 272 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(555 + Random(-3, 3), 239 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(611 + Random(-3, 3), 201 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(636 + Random(-3, 3), 173 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(668 + Random(-3, 3), 145 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(719 + Random(-3, 3), 109 + Random(-3, 3))
            Sleep CLICK_DELAY










            ClickAt(200, 966)
            Sleep CLICK_DELAY



            ClickAt(225 + Random(-3, 3), 414 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(285 + Random(-3, 3), 385 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(334 + Random(-3, 3), 354 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(378 + Random(-3, 3), 327 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(433 + Random(-3, 3), 291 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(487 + Random(-3, 3), 272 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(555 + Random(-3, 3), 239 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(611 + Random(-3, 3), 201 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(636 + Random(-3, 3), 173 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(668 + Random(-3, 3), 145 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(719 + Random(-3, 3), 109 + Random(-3, 3))
            Sleep CLICK_DELAY









            ClickAt(295, 931)
            Sleep CLICK_DELAY



            ClickAt(225 + Random(-3, 3), 414 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(285 + Random(-3, 3), 385 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(334 + Random(-3, 3), 354 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(378 + Random(-3, 3), 327 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(433 + Random(-3, 3), 291 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(487 + Random(-3, 3), 272 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(555 + Random(-3, 3), 239 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(611 + Random(-3, 3), 201 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(636 + Random(-3, 3), 173 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(668 + Random(-3, 3), 145 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(719 + Random(-3, 3), 109 + Random(-3, 3))
            Sleep CLICK_DELAY






            ClickAt(415, 932)
            Sleep CLICK_DELAY




            ClickAt(225 + Random(-3, 3), 414 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(285 + Random(-3, 3), 385 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(334 + Random(-3, 3), 354 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(378 + Random(-3, 3), 327 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(433 + Random(-3, 3), 291 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(487 + Random(-3, 3), 272 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(555 + Random(-3, 3), 239 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(611 + Random(-3, 3), 201 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(636 + Random(-3, 3), 173 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(668 + Random(-3, 3), 145 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(719 + Random(-3, 3), 109 + Random(-3, 3))
            Sleep CLICK_DELAY




             ClickAt(517, 936)
            Sleep CLICK_DELAY





            ClickAt(225 + Random(-3, 3), 414 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(285 + Random(-3, 3), 385 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(334 + Random(-3, 3), 354 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(378 + Random(-3, 3), 327 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(433 + Random(-3, 3), 291 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(487 + Random(-3, 3), 272 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(555 + Random(-3, 3), 239 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(611 + Random(-3, 3), 201 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(636 + Random(-3, 3), 173 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(668 + Random(-3, 3), 145 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(719 + Random(-3, 3), 109 + Random(-3, 3))
            Sleep CLICK_DELAY




            ClickAt(643, 935)
            Sleep CLICK_DELAY





            ClickAt(225 + Random(-3, 3), 414 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(285 + Random(-3, 3), 385 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(334 + Random(-3, 3), 354 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(378 + Random(-3, 3), 327 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(433 + Random(-3, 3), 291 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(487 + Random(-3, 3), 272 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(555 + Random(-3, 3), 239 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(611 + Random(-3, 3), 201 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(636 + Random(-3, 3), 173 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(668 + Random(-3, 3), 145 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(719 + Random(-3, 3), 109 + Random(-3, 3))
            Sleep CLICK_DELAY



            


            ClickAt(751, 931)
            Sleep CLICK_DELAY







            ClickAt(225 + Random(-3, 3), 414 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(285 + Random(-3, 3), 385 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(334 + Random(-3, 3), 354 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(378 + Random(-3, 3), 327 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(433 + Random(-3, 3), 291 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(487 + Random(-3, 3), 272 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(555 + Random(-3, 3), 239 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(611 + Random(-3, 3), 201 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(636 + Random(-3, 3), 173 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(668 + Random(-3, 3), 145 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(719 + Random(-3, 3), 109 + Random(-3, 3))
            Sleep CLICK_DELAY






             ClickAt(873, 936)
            Sleep CLICK_DELAY




            

            ClickAt(225 + Random(-3, 3), 414 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(285 + Random(-3, 3), 385 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(334 + Random(-3, 3), 354 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(378 + Random(-3, 3), 327 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(433 + Random(-3, 3), 291 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(487 + Random(-3, 3), 272 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(555 + Random(-3, 3), 239 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(611 + Random(-3, 3), 201 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(636 + Random(-3, 3), 173 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(668 + Random(-3, 3), 145 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(719 + Random(-3, 3), 109 + Random(-3, 3))
            Sleep CLICK_DELAY






             ClickAt(970, 941)
            Sleep CLICK_DELAY





            
            ClickAt(225 + Random(-3, 3), 414 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(285 + Random(-3, 3), 385 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(334 + Random(-3, 3), 354 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(378 + Random(-3, 3), 327 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(433 + Random(-3, 3), 291 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(487 + Random(-3, 3), 272 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(555 + Random(-3, 3), 239 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(611 + Random(-3, 3), 201 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(636 + Random(-3, 3), 173 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(668 + Random(-3, 3), 145 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(719 + Random(-3, 3), 109 + Random(-3, 3))
            Sleep CLICK_DELAY





            ClickAt(1083, 930)
            Sleep CLICK_DELAY




              
            ClickAt(225 + Random(-3, 3), 414 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(285 + Random(-3, 3), 385 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(334 + Random(-3, 3), 354 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(378 + Random(-3, 3), 327 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(433 + Random(-3, 3), 291 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(487 + Random(-3, 3), 272 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(555 + Random(-3, 3), 239 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(611 + Random(-3, 3), 201 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(636 + Random(-3, 3), 173 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(668 + Random(-3, 3), 145 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(719 + Random(-3, 3), 109 + Random(-3, 3))
            Sleep CLICK_DELAY






            ClickAt(1240, 938)
            Sleep CLICK_DELAY

            ClickAt(225 + Random(-3, 3), 414 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(285 + Random(-3, 3), 385 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(334 + Random(-3, 3), 354 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(378 + Random(-3, 3), 327 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(433 + Random(-3, 3), 291 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(487 + Random(-3, 3), 272 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(555 + Random(-3, 3), 239 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(611 + Random(-3, 3), 201 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(636 + Random(-3, 3), 173 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(668 + Random(-3, 3), 145 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(719 + Random(-3, 3), 109 + Random(-3, 3))
            Sleep CLICK_DELAY





            
            ClickAt(1347, 944)
            Sleep CLICK_DELAY

            
            ClickAt(770  + Random(-3, 3), 488 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(770  + Random(-3, 3), 488 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(770  + Random(-3, 3), 488 + Random(-3, 3))
            Sleep CLICK_DELAY
            
            ClickAt(770  + Random(-3, 3), 488 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(770  + Random(-3, 3), 488 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(770  + Random(-3, 3), 488 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(770  + Random(-3, 3), 488 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(770  + Random(-3, 3), 488 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(770  + Random(-3, 3), 488 + Random(-3, 3))
            Sleep CLICK_DELAY

            ClickAt(770  + Random(-3, 3), 488 + Random(-3, 3))
            Sleep CLICK_DELAY





            ClickAt(1429, 939)
            Sleep CLICK_DELAY

            ClickAt(629 + Random(-3, 3), 620 + Random(-3, 3))
            Sleep CLICK_DELAY



            ClickAt(1548, 940)
            Sleep CLICK_DELAY

            ClickAt(680 + Random(-3, 3), 480 + Random(-3, 3))
            Sleep CLICK_DELAY




            ClickAt(1683, 926)
            Sleep CLICK_DELAY

            ClickAt(500 + Random(-3, 3), 507 + Random(-3, 3))
            Sleep CLICK_DELAY











            start := A_TickCount
            timeout := 160000

            green := 0xC5EB5F   ; <-- vaihda tähän Ctrl+Alt+C:llä saamasi arvo
            px := 952           ; <-- vaihda: vihreän napin sisällä oleva X (Window)
            py := 881           ; <-- vaihda: vihreän napin sisällä oleva Y (Window)
            tol := 25           ; <-- toleranssi (20–40 on yleensä ok)

            CoordMode "Pixel", "Window"

            Loop {
                c := PixelGetColor(px, py, "RGB")

                r1 := (c >> 16) & 0xFF, g1 := (c >> 8) & 0xFF, b1 := c & 0xFF
                r2 := (green >> 16) & 0xFF, g2 := (green >> 8) & 0xFF, b2 := green & 0xFF

                if (Abs(r1-r2) <= tol && Abs(g1-g2) <= tol && Abs(b1-b2) <= tol) {
                ClickAt(872, 867)
                Sleep 3000   ; etene
                break
                }

                if (A_TickCount - start >= timeout)
                    break

                Sleep 3000
            }


            Log("=== LOOP " A_Index " END ===")
            Sleep LOOP_DELAY
        }

        Log("=== Coord (Window) DONE ===")
        ToolTip "Done."
        SetTimer () => ToolTip(), -1000
    } catch as e {
        Log("ERROR: " e.Message)
        ToolTip "FAILED: " e.Message
        SetTimer () => ToolTip(), -3000
    }
}

; Klikkaa aktiivisen ikkunan sisällä oleviin koordinaatteihin
ClickAt(x, y, clicks := 1, betweenClicksMs := 80) {
    CoordMode "Mouse", "Window"
    Log("ClickAt (Window): X=" x " Y=" y " | clicks=" clicks)
    Loop clicks {
        Click x, y
        Sleep betweenClicksMs
    }
}

Log(msg) {
    global LOG_FILE
    ts := FormatTime(A_Now, "yyyy-MM-dd HH:mm:ss")
    FileAppend "[" ts "] " msg "`n", LOG_FILE, "UTF-8"
}

ZoomWheel(steps := 6, direction := "Down", delayMs := 20) {
    Loop steps {
        if (direction = "Up")
            Send "{WheelUp}"
        else
            Send "{WheelDown}"
        Sleep delayMs
    }
    Log("ZoomWheel: " direction " steps=" steps)

   
}


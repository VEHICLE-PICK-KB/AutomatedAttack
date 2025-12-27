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
LOG_FILE := BASE_DIR "\automationXYBB.log"


EXE_NAME := "crosvm.exe"     ; kohdesovelluksen exe (jätä "" jos ei tarkistusta)
CLICK_DELAY := 300           ; viive vaiheiden välissä (ms)

; Terminate
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
            ;  Lähde: testikierros 2025-12-24 21:13–21:14 (edited)
            ; ==========================================

            ZoomWheel(17, "Down")
            Sleep 1000

            ClickAt(872, 774)
            Sleep 1000


            ZoomWheel(17, "Down")
            Sleep 1000

            ClickAt(97, 928)
            Sleep 300

            ClickAt(1358, 669)
            Sleep 10000

            ZoomWheel(17, "Down")
            Sleep 1000




            ClickAt(287, 901)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY




            ClickAt(447, 945)
            Sleep CLICK_DELAY


            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY




            ClickAt(529, 949)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY




            ClickAt(659, 935)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY




            ClickAt(774, 932)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY







            ClickAt(892, 944)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY




            ClickAt(999, 942)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY





            ClickAt(1120, 934)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY





            ClickAt(1228, 934)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY







            ClickAt(1342, 944)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY





            ClickAt(1459, 939)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY







            ClickAt(287, 912)
            Sleep 800

            




            ClickAt(447, 945)
            Sleep 800




            ClickAt(529, 949)
            Sleep 800






            ClickAt(659, 935)
            Sleep 800




            ClickAt(774, 932)
            Sleep 800








            ClickAt(892, 944)
            Sleep 800





            ClickAt(999, 942)
            Sleep 800



            ClickAt(1120, 934)
            Sleep 800


            ClickAt(1228, 934)
            Sleep 800



            ClickAt(1342, 944)
            Sleep 800



            ClickAt(1459, 939)
            Sleep 800






            start := A_TickCount
            timeout := 110000

            green := 0x8BD43A   
            px := 947           
            py := 865           
            tol := 25           

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

                if (A_TickCount - start >= timeout){

            ClickAt(287, 901)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY




            ClickAt(447, 945)
            Sleep CLICK_DELAY


            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY




            ClickAt(529, 949)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY




            ClickAt(659, 935)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY




            ClickAt(774, 932)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY







            ClickAt(892, 944)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY




            ClickAt(999, 942)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY


             ClickAt(1121, 919)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY



            ClickAt(1228, 934)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY



            ClickAt(1342, 944)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY


            ClickAt(1459, 939)
            Sleep CLICK_DELAY

            ClickAt(1524 + Random(-3, 3), 483 + Random(-3, 3))
            Sleep CLICK_DELAY



            ClickAt(287, 912)
            Sleep 800

            




            ClickAt(447, 945)
            Sleep 800




            ClickAt(529, 949)
            Sleep 800






            ClickAt(659, 935)
            Sleep 800





            ClickAt(774, 932)
            Sleep 800








            ClickAt(892, 944)
            Sleep 800





            ClickAt(999, 942)
            Sleep 800


            start := A_TickCount
            timeout := 110000

            if (Abs(r1-r2) <= tol && Abs(g1-g2) <= tol && Abs(b1-b2) <= tol) {
                ClickAt(872, 867)
                Sleep 3000   ; etene
                break
                }
                }
                    

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

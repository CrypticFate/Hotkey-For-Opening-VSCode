#IfWinActive ahk_class CabinetWClass
~F12::
    ; Get the active File Explorer window
    for window in ComObjCreate("Shell.Application").Windows
    {
        if (window.hwnd = WinActive("A")) {
            _Path := window.Document.Folder.Self.Path
            break
        }
    }
    
    ; Open Windows Terminal in the extracted path
    Run, "PathToYourVsCode" "%_Path%" ; 
    return


~RShift::
    ; Get the active File Explorer window
    for window in ComObjCreate("Shell.Application").Windows
    {
        if (window.hwnd = WinActive("A")) {
            _Path := window.Document.Folder.Self.Path
            break
        }
    }

    ; Open Git Bash in the extracted path
    Run, "PathToYourBashTerminal", %_Path%
    return
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
    Run, "C:\Users\Sakeef\AppData\Local\Programs\Microsoft VS Code\Code.exe" -d "%_Path%"
return

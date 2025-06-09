#HotIf A_Clipboard != "" && shouldActivate()
^v::
{
    contents := ClipboardAll()
    A_Clipboard := RegExReplace(A_Clipboard, "[\n\r]", "")
    Send "^v"
    ; restore after paste
    Sleep 10
    A_Clipboard := contents
    contents := ""
}
#HotIf

; change according to needs
shouldActivate() {
    return WinActive("ahk_exe ApplicationFrameHost.exe")
    && WinGetTitle(WinActive("A")) ~= "OneNote"
}

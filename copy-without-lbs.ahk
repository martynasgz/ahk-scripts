#Include utils\line-breaks.ahk

^+c::
{
    contents := ClipboardAll()
    A_Clipboard := ""
    Send "^c"
    if (ClipWait(0.5)) {
        A_Clipboard := removeLineBreaks(A_Clipboard)
    ; restore if no text appeared
    } else {
        A_Clipboard := contents
    }
}

^+c::
{
    contents := ClipboardAll()
    A_Clipboard := ""
    Send "^c"
    if (ClipWait(0.5)) {
        A_Clipboard := RegExReplace(A_Clipboard, "\s*[\n\r]\s*", " ")
    ; restore if no text appeared
    } else {
        A_Clipboard := contents
    }
}

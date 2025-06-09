removeLineBreaks(str) {
    return RegExReplace(str, "\s*[\n\r]\s*", " ")
}

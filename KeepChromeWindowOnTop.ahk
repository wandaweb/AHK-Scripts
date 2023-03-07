; AHK 1

isOnTop := false

#SPACE::
{
    if (!isOnTop) 
    {
        WinSet, AlwaysOnTop, 1, ahk_exe chrome.exe
        WinWait, ahk_exe chrome.exe
        WinMove, ahk_exe chrome.exe, , 200, 600, 400, 400
    } 
    else 
    {
        WinSet, AlwaysOnTop, 0, ahk_exe chrome.exe
    }
    isOnTop := !isOnTop
}
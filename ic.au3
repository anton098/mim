#include<ScreenCapture.au3>
Opt("TrayIconHide",0)

If FileExists(@AppDataDir & "\checkrdpconf") Then
Else
DirCreate (@AppDataDir & "\checkrdpconf")
EndIf

$FPath = @AppDataDir & "\checkrdpconf\"

While 1
   Local $hBmp

   ;Capture full screen
   $hBmp = _ScreenCapture_Capture("")

   ;Save bitmap to file
   _ScreenCapture_SaveImage ($FPath & ".jpeg" , $hBmp)

WEnd
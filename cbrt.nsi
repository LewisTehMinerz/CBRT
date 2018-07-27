;--------------------------------
;Include Modern UI

  !include "MUI2.nsh"

;--------------------------------
;General

  ;Name and file
  Name "CheatBreaker Removal Tool"
  Caption "CheatBreaker Removal Tool"
  OutFile "cbrt.exe"
  Icon "cbrt.ico"
  BrandingText "CheatBreaker Removal Tool"

  ;Get installation folder from registry if available
  ;InstallDirRegKey HKCU "Software\Modern UI Test" ""

  ;Request application privileges for Windows Vista
  RequestExecutionLevel admin

  ;Force installation details to show
  ShowInstDetails show

;--------------------------------
;Application Keys

  VIProductVersion 0.0.0.1
  VIAddVersionKey /LANG=1033-English "ProductName" "CheatBreaker Removal Tool"
  VIAddVersionKey /LANG=1033-English "ProductVersion" "1.0.0.0"
  VIAddVersionKey /LANG=1033-English "FileDescription" "CheatBreaker Removal Tool"
  VIAddVersionKey /LANG=1033-English "Copyright" "Copyright (c) LewisTehMinerz"

;--------------------------------
;Interface Settings

  !define MUI_ABORTWARNING
  !define MUI_ICON "cbrt.ico"

;--------------------------------
;Pages

  !define MUI_WELCOMEPAGE_TITLE "Welcome to the CheatBreaker Removal Tool."
  !define MUI_WELCOMEPAGE_TEXT "This tool is designed to help automate the removal process of CheatBreaker."
  
  !insertmacro MUI_PAGE_WELCOME
 
  !define MUI_PAGE_HEADER_TEXT "Warranty Agreement"
  !define MUI_PAGE_HEADER_SUBTEXT "Please review the warranty before using CheatBreaker Removal Tool."
  !define MUI_LICENSEPAGE_TEXT_TOP "Warranty"
  !define MUI_LICENSEPAGE_TEXT_BOTTOM "If you accept the fact that there is no warranty, you may check the checkbox and continue. You must check it in order to use CheatBreaker Removal Tool."
  !define MUI_LICENSEPAGE_BUTTON "Remove CB"
  !define MUI_LICENSEPAGE_CHECKBOX
	!define MUI_LICENSEPAGE_CHECKBOX_TEXT "I have reviewed the agreement and understand that there is no warranty."
	
  !insertmacro MUI_PAGE_LICENSE "WARRANTY"

  !define MUI_PAGE_HEADER_TEXT "Removing CheatBreaker..."
  !define MUI_PAGE_HEADER_SUBTEXT "CheatBreaker is now being removed. Please wait."
  
  !insertmacro MUI_PAGE_INSTFILES
    
  !define MUI_FINISHPAGE_TITLE "CheatBreaker Removal Tool has finished."
  !define MUI_FINISHPAGE_TEXT "CheatBreaker Removal Tool has removed CheatBreaker completely from your computer. You may need to restart to fully remove CheatBreaker if components are still left.$\n$\nClick Finish to close setup."
  !insertmacro MUI_PAGE_FINISH

;--------------------------------
;Languages

  !insertmacro MUI_LANGUAGE "English"
  
;--------------------------------
;Sections

Section
  RMDir /r /REBOOTOK "C:\Program Files\CheatBreaker"
  RMDir /r /REBOOTOK "$APPDATA\CheatBreaker"
  RMDir /r /REBOOTOK "$APPDATA\Microsoft\Windows\Start Menu\Programs\CheatBreaker"
  Delete /REBOOTOK "$DESKTOP\CheatBreaker.lnk"
SectionEnd
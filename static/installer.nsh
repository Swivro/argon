!macro customInstall
  WriteRegStr SHCTX "SOFTWARE\RegisteredApplications" "Argon" "Software\Clients\StartMenuInternet\Skye\Capabilities"

  WriteRegStr SHCTX "SOFTWARE\Classes\Skye" "" "Skye HTML Document"
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\Application" "AppUserModelId" "Argon"
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\Application" "ApplicationIcon" "$INSTDIR\Argon.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\Application" "ApplicationName" "Argon"
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\Application" "ApplicationCompany" "Argon"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\Application" "ApplicationDescription" "Extensible, fast and innovative web browser with Innatical UI."      
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\DefaultIcon" "DefaultIcon" "$INSTDIR\Argon.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\shell\open\command" "" '"$INSTDIR\Skye.exe" "%1"'

  WriteRegStr SHCTX "SOFTWARE\Classes\.htm\OpenWithProgIds" "Argon" ""
  WriteRegStr SHCTX "SOFTWARE\Classes\.html\OpenWithProgIds" "Argon" ""

  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye" "" "Argon"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\DefaultIcon" "" "$INSTDIR\Argon.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities" "ApplicationDescription" "Extensible, fast and innovative web browser with Innatical UI."
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities" "ApplicationName" "Argon"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities" "ApplicationIcon" "$INSTDIR\Argon.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities\FileAssociations" ".htm" "Argon"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities\FileAssociations" ".html" "Argon"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities\URLAssociations" "http" "Argon"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities\URLAssociations" "https" "Argon"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities\StartMenu" "StartMenuInternet" "Argon"
  
  WriteRegDWORD SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\InstallInfo" "IconsVisible" 1
  
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\shell\open\command" "" "$INSTDIR\Argon.exe"
!macroend
!macro customUnInstall
  DeleteRegKey SHCTX "SOFTWARE\Classes\Argon"
  DeleteRegKey SHCTX "SOFTWARE\Clients\StartMenuInternet\Argon"
  DeleteRegValue SHCTX "SOFTWARE\RegisteredApplications" "Argon"
!macroend
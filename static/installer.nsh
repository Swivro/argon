!macro customInstall
  WriteRegStr SHCTX "SOFTWARE\RegisteredApplications" "SwivroBrowser" "Software\Clients\StartMenuInternet\Skye\Capabilities"

  WriteRegStr SHCTX "SOFTWARE\Classes\Skye" "" "Skye HTML Document"
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\Application" "AppUserModelId" "SwivroBrowser"
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\Application" "ApplicationIcon" "$INSTDIR\SwivroBrowser.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\Application" "ApplicationName" "SwivroBrowser"
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\Application" "ApplicationCompany" "SwivroBrowser"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\Application" "ApplicationDescription" "Extensible, fast and innovative web browser with Innatical UI."      
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\DefaultIcon" "DefaultIcon" "$INSTDIR\SwivroBrowser.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Skye\shell\open\command" "" '"$INSTDIR\Skye.exe" "%1"'

  WriteRegStr SHCTX "SOFTWARE\Classes\.htm\OpenWithProgIds" "SwivroBrowser" ""
  WriteRegStr SHCTX "SOFTWARE\Classes\.html\OpenWithProgIds" "SwivroBrowser" ""

  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye" "" "SwivroBrowser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\DefaultIcon" "" "$INSTDIR\SwivroBrowser.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities" "ApplicationDescription" "Extensible, fast and innovative web browser with Innatical UI."
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities" "ApplicationName" "SwivroBrowser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities" "ApplicationIcon" "$INSTDIR\SwivroBrowser.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities\FileAssociations" ".htm" "SwivroBrowser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities\FileAssociations" ".html" "SwivroBrowser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities\URLAssociations" "http" "SwivroBrowser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities\URLAssociations" "https" "SwivroBrowser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\Capabilities\StartMenu" "StartMenuInternet" "SwivroBrowser"
  
  WriteRegDWORD SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\InstallInfo" "IconsVisible" 1
  
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Skye\shell\open\command" "" "$INSTDIR\SwivroBrowser.exe"
!macroend
!macro customUnInstall
  DeleteRegKey SHCTX "SOFTWARE\Classes\SwivroBrowser"
  DeleteRegKey SHCTX "SOFTWARE\Clients\StartMenuInternet\SwivroBrowser"
  DeleteRegValue SHCTX "SOFTWARE\RegisteredApplications" "SwivroBrowser"
!macroend
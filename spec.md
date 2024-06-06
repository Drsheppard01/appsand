runner

{
/bin/%{appname}  
/bin/%{hooks}  
/usr/share/applications/%{appname}.desktop  
/usr/share/icons/scalable.svg  
/usr/share/metainfo/%{id}.metainfo.xml  
/lib/
}

runner -- add arguments for /bin/%{appname} add hooks before  
/bin/%{appname} - main app  
/usr/share/ - folder which must integrate in desktop  
/usr/share/application.desktop — must contain compliant file for menus and launchers  
/usr/share/icons/scalable.svg — must contain icon  
/usr/share/metainfo/%{id}.metainfo.xml — must contain metainfo for compliant appstream protocol  
/lib — other lib which not included in desktop  

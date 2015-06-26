@echo off
echo -------------------------------------------------------------------------------
echo Ustawianie sciezek
echo -------------------------------------------------------------------------------
set system_app_pl=%~dp0\pl.zip.bzprj\appDecompiled\system__app\
set system_app=%~dp0\miui.zip.bzprj\appDecompiled\system__app\

set system_priv-app_pl=%~dp0\pl.zip.bzprj\appDecompiled\system__priv-app\
set system_priv-app=%~dp0\miui.zip.bzprj\appDecompiled\system__priv-app\

set source1=%~dp0\pl.zip.bzprj\frmDecompiled\
set destination1=%~dp0\miui.zip.bzprj\frmDecompiled\

set source2=%~dp0\pl.zip.bzprj\extras\
set destination2=%~dp0\miui.zip.bzprj\extras\

set source3=%~dp0
set destination3=%~dp0\miui.zip.bzprj\baseROM\
echo -------------------------------------------------------------------------------
echo Usuwanie niepotrzebnych plikow i aplikacji
echo -------------------------------------------------------------------------------
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\data__miui__app__customized\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__app\LGEIME.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__app\LGEIME_DICT_XT9_bin.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__app\GameCenter.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__app\VoiceAssist.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__app\MiFinance.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__app\BaiduNetworkLocation.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__app\ChromeBookmarksSyncAdapter.apk\"
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__priv-app\MiGameCenterSDKService.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__app\GoogleCalendarSyncAdapter.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__app\GoogleContactsSyncAdapter.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__app\GoogleTTS.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__priv-app\GmsCore.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__priv-app\GoogleBackupTransport.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__priv-app\GoogleFeedback.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__priv-app\GoogleLoginService.apk\" 
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__priv-app\GoogleOneTimeInitializer.apk\"
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__priv-app\GooglePartnerSetup.apk\"
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__priv-app\GoogleServicesFramework.apk\"
rmdir /s /q "%~dp0\miui.zip.bzprj\appDecompiled\system__priv-app\Phonesky.apk\"
rmdir /s /q "%~dp0\miui.zip.bzprj\baseROM\data\miui\app\"
rmdir /s /q "%~dp0\miui.zip.bzprj\baseROM\system\vendor\pittpatt\"
rmdir /s /q "%~dp0\miui.zip.bzprj\baseROM\system\vendor\media\"
rmdir /s /q "%~dp0\miui.zip.bzprj\baseROM\system\vendor\firmware\"
rmdir /s /q "%~dp0\miui.zip.bzprj\baseROM\system\tts\"
rmdir /s /q "%~dp0\miui.zip.bzprj\baseROM\system\sounds\"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\priv-app\MiGameCenterSDKService.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\app\GameCenter.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\app\GoogleTTS.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\app\MiFinance.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\app\VoiceAssist.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\app\Phonesky.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\app\GoogleCalendarSyncAdapter.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\app\GoogleContactsSyncAdapter.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\priv-app\GmsCore.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\priv-app\GoogleBackupTransport.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\priv-app\GoogleFeedback.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\priv-app\GoogleLoginService.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\priv-app\GoogleOneTimeInitializer.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\priv-app\GooglePartnerSetup.apk"
del /s /q "%~dp0\miui.zip.bzprj\baseROM\system\priv-app\GoogleServicesFramework.apk"
echo -------------------------------------------------------------------------------
echo Kopiowanie tlumaczenia system/app
echo -------------------------------------------------------------------------------
XCOPY "%system_app_pl%\AntiSpam.apk\res\values-pl\*" "%system_app%\AntiSpam.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\ApplicationsProvider.apk\res\values-pl\*" "%system_app%\ApplicationsProvider.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\BugReport.apk\res\values-pl\*" "%system_app%\BugReport.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\Calculator.apk\res\values-pl\*" "%system_app%\Calculator.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\DeskClock.apk\res\values-pl\*" "%system_app%\DeskClock.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\DocumentsUI.apk\res\values-pl\*" "%system_app%\DocumentsUI.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\DownloadProviderUi.apk\res\values-pl\*" "%system_app%\DownloadProviderUi.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\Email.apk\res\values-pl\*" "%system_app%\Email.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\FileExplorer.apk\res\values-pl\*" "%system_app%\FileExplorer.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\GuardProvider.apk\res\values-pl\*" "%system_app%\GuardProvider.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\HTMLViewer.apk\res\values-pl\*" "%system_app%\HTMLViewer.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\KeyChain.apk\res\values-pl\*" "%system_app%\KeyChain.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\LiveWallpapersPicker.apk\res\values-pl\*" "%system_app%\LiveWallpapersPicker.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\miui.apk\res\values-pl-xxhdpi\*" "%system_app%\miui.apk\res\values-pl-xxhdpi" /s /i /y /q  
XCOPY "%system_app_pl%\MiuiCompass.apk\res\values-pl\*" "%system_app%\MiuiCompass.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\MiuiVideo.apk\res\values-pl\*" "%system_app%\MiuiVideo.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\MiWallpaper.apk\res\values-pl\*" "%system_app%\MiWallpaper.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\NetworkAssistant2.apk\res\values-pl\*" "%system_app%\NetworkAssistant2.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\Notes.apk\res\values-pl\*" "%system_app%\Notes.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\PackageInstaller.apk\res\values-pl\*" "%system_app%\PackageInstaller.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\PacProcessor.apk\res\values-pl\*" "%system_app%\PacProcessor.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\PrintSpooler.apk\res\values-pl\*" "%system_app%\PrintSpooler.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\Provision.apk\res\values-pl\*" "%system_app%\Provision.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\SoundRecorder.apk\res\values-pl\*" "%system_app%\SoundRecorder.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\QuickSearchBox.apk\res\values-pl\*" "%system_app%\QuickSearchBox.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\ThemeManager.apk\res\values-pl\*" "%system_app%\ThemeManager.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\UserDictionaryProvider.apk\res\values-pl\*" "%system_app%\UserDictionaryProvider.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\Updater.apk\res\values-pl\*" "%system_app%\Updater.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\Updater.apk\res\drawable-pl-xxhdpi\*" "%system_app%\Updater.apk\res\drawable-pl-xxhdpi" /s /i /y /q  
XCOPY "%system_app_pl%\XiaomiAccount.apk\res\values-pl\*" "%system_app%\XiaomiAccount.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\XiaomiServiceFramework.apk\res\values-pl\*" "%system_app%\XiaomiServiceFramework.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_app_pl%\DeskClock.apk\res\drawable-pl-hdpi\*" "%system_app%\DeskClock.apk\res\drawable-pl-hdpi" /s /i /y /q  
XCOPY "%system_app_pl%\DeskClock.apk\res\drawable-pl-xhdpi\*" "%system_app%\DeskClock.apk\res\drawable-pl-xhdpi" /s /i /y /q  
XCOPY "%system_app_pl%\DownloadProviderUi.apk\res\layout-pl\*" "%system_app%\DownloadProviderUi.apk\res\layout-pl" /s /i /y /q  
XCOPY "%system_app_pl%\MiuiCompass.apk\res\drawable-pl-xxhdpi\*" "%system_app%\MiuiCompass.apk\res\drawable-pl-xxhdpi" /s /i /y /q  
XCOPY "%system_app_pl%\MiuiVideo.apk\res\drawable-pl-xxhdpi\*" "%system_app%\MiuiVideo.apk\res\drawable-pl-xxhdpi" /s /i /y /q  
XCOPY "%system_app_pl%\NetworkAssistant2.apk\res\layout-pl\*" "%system_app%\NetworkAssistant2.apk\res\layout-pl" /s /i /y /q  
XCOPY "%system_app_pl%\ThemeManager.apk\res\drawable-pl-xxhdpi\*" "%system_app%\ThemeManager.apk\res\drawable-pl-xxhdpi" /s /i /y /q  
echo -------------------------------------------------------------------------------
echo Kopiowanie tlumaczenia system/priv-app
echo -------------------------------------------------------------------------------
XCOPY "%system_priv-app_pl%\AuthManager.apk\res\values-pl\*" "%system_priv-app%\AuthManager.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Backup.apk\res\values-pl\*" "%system_priv-app%\Backup.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\BackupRestoreConfirmation.apk\res\values-pl\*" "%system_priv-app%\BackupRestoreConfirmation.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\BarcodeScanner.apk\res\values-pl\*" "%system_priv-app%\BarcodeScanner.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Browser.apk\res\values-pl\*" "%system_priv-app%\Browser.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Calendar.apk\res\values-pl\*" "%system_priv-app%\Calendar.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Calendar.apk\res\values-pl-rPL\*" "%system_priv-app%\Calendar.apk\res\values-pl-rPL" /s /i /y /q  
XCOPY "%system_priv-app_pl%\CalendarProvider.apk\res\values-pl\*" "%system_priv-app%\CalendarProvider.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\CleanMaster.apk\res\values-pl\*" "%system_priv-app%\CleanMaster.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Contacts.apk\res\values-pl\*" "%system_priv-app%\Contacts.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\ContactsProvider.apk\res\values-pl\*" "%system_priv-app%\ContactsProvider.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\DownloadProvider.apk\res\values-pl\*" "%system_priv-app%\DownloadProvider.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\ExternalStorageProvider.apk\res\values-pl\*" "%system_priv-app%\ExternalStorageProvider.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\FusedLocation.apk\res\values-pl\*" "%system_priv-app%\FusedLocation.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\InputDevices.apk\res\values-pl\*" "%system_priv-app%\InputDevices.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\MediaProvider.apk\res\values-pl\*" "%system_priv-app%\MediaProvider.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\MiuiGallery.apk\res\values-pl\*" "%system_priv-app%\MiuiGallery.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\MiuiHome.apk\res\values-pl\*" "%system_priv-app%\MiuiHome.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\MiuiKeyguard.apk\res\values-pl\*" "%system_priv-app%\MiuiKeyguard.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\MiuiSystemUI.apk\res\values-pl\*" "%system_priv-app%\MiuiSystemUI.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Mms.apk\res\values-pl\*" "%system_priv-app%\Mms.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Music.apk\res\values-pl\*" "%system_priv-app%\Music.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\SecurityCenter.apk\res\values-pl\*" "%system_priv-app%\SecurityCenter.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Settings.apk\res\values-pl\*" "%system_priv-app%\Settings.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\SettingsProvider.apk\res\values-pl\*" "%system_priv-app%\SettingsProvider.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Shell.apk\res\values-pl\*" "%system_priv-app%\Shell.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\TelephonyProvider.apk\res\values-pl\*" "%system_priv-app%\TelephonyProvider.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\TeleService.apk\res\values-pl\*" "%system_priv-app%\TeleService.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\VpnDialogs.apk\res\values-pl\*" "%system_priv-app%\VpnDialogs.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\WallpaperCropper.apk\res\values-pl\*" "%system_priv-app%\WallpaperCropper.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Weather.apk\res\values-pl\*" "%system_priv-app%\Weather.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\WeatherProvider.apk\res\values-pl\*" "%system_priv-app%\WeatherProvider.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\YellowPage.apk\res\values-pl\*" "%system_priv-app%\YellowPage.apk\res\values-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Browser.apk\res\drawable-pl-hdpi\*" "%system_priv-app%\Browser.apk\res\drawable-pl-hdpi" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Browser.apk\res\drawable-pl-xhdpi\*" "%system_priv-app%\Browser.apk\res\drawable-pl-xhdpi" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Browser.apk\res\raw-pl\*" "%system_priv-app%\Browser.apk\res\raw-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Calendar.apk\res\drawable-pl-nodpi\*" "%system_priv-app%\Calendar.apk\res\drawable-pl-nodpi" /s /i /y /q  
XCOPY "%system_priv-app_pl%\MiuiHome.apk\res\drawable-pl-xxhdpi\*" "%system_priv-app%\MiuiHome.apk\res\drawable-pl-xxhdpi" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Mms.apk\res\raw-pl\*" "%system_priv-app%\Mms.apk\res\raw-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Music.apk\res\drawable-pl-xxhdpi\*" "%system_priv-app%\Music.apk\res\drawable-pl-xxhdpi" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Settings.apk\res\drawable-pl-xhdpi\*" "%system_priv-app%\Settings.apk\res\drawable-pl-xhdpi" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Settings.apk\res\drawable-pl-xxhdpi\*" "%system_priv-app%\Settings.apk\res\drawable-pl-xxhdpi" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Settings.apk\res\raw-pl\*" "%system_priv-app%\Settings.apk\res\raw-pl" /s /i /y /q  
XCOPY "%system_priv-app_pl%\Settings.apk\res\xml-pl\*" "%system_priv-app%\Settings.apk\res\xml-pl" /s /i /y /q  
XCOPY "%source3%\system\values-pl\*" "%system_priv-app%\CameraApp3b.apk\res\values-pl" /s /i /y /q  
echo -------------------------------------------------------------------------------
echo Tlumaczenie frameworka
echo -------------------------------------------------------------------------------
XCOPY "%source1%\framework-ext-res.apk\res\values-pl\*" "%destination1%\framework-ext-res.apk\res\values-pl" /s /i /y /q  
XCOPY "%source1%\framework-res.apk\res\values-pl\*" "%destination1%\framework-res.apk\res\values-pl" /s /i /y /q  
XCOPY "%source1%\framework-res.apk\res\values-pl-rPL\*" "%destination1%\framework-res.apk\res\values-pl-rPL" /s /i /y /q  
XCOPY "%source1%\framework-res.apk\res\raw-pl\*" "%destination1%\framework-res.apk\res\raw-pl" /s /i /y /q  
echo -------------------------------------------------------------------------------
echo Tlumaczenie plikow systemowych
echo -------------------------------------------------------------------------------
XCOPY "%source2%\clocks\strings\strings_pl_PL.xml" "%destination2%\clocks\strings\strings_pl_PL.xml*" /s /i /y /q  
XCOPY "%source2%\lockscreen\advance\strings\strings_pl_PL.xml" "%destination2%\lockscreen\advance\strings\strings_pl_PL.xml*" /s /i /y /q  
XCOPY "%source2%\powermenu\strings\strings_pl_PL.xml" "%destination2%\powermenu\strings\strings_pl_PL.xml*" /s /i /y /q  
echo -------------------------------------------------------------------------------
echo Kopiowanie dodatkow 
echo -------------------------------------------------------------------------------
XCOPY "%source3%\system\boot.img" "%destination3%\boot.img*" /s /i /y /q  
XCOPY "%source3%\system\build.prop" "%destination3%\system\build.prop*" /s /i /y /q  
XCOPY "%source3%\META-INF\com\google\android\updater-script" "%destination3%\META-INF\com\google\android\updater-script*" /s /i /y /q  
XCOPY "%source3%\system\app\*" "%destination3%\system\app" /s /i /y /q  
XCOPY "%source3%\system\bin\*" "%destination3%\system\bin" /s /i /y /q  
XCOPY "%source3%\system\etc\*" "%destination3%\system\etc" /s /i /y /q  
XCOPY "%source3%\system\framework\*" "%destination3%\system\framework" /s /i /y /q  
XCOPY "%source3%\system\lib\*" "%destination3%\system\lib" /s /i /y /q  
XCOPY "%source3%\system\media\*" "%destination3%\system\media" /s /i /y /q  
XCOPY "%source3%\system\priv-app\*" "%destination3%\system\priv-app" /s /i /y /q  
echo -------------------------------------------------------------------------------
echo Ukonczono tlumaczenie
echo -------------------------------------------------------------------------------
PAUSE
; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Stromnia"
#define MyAppVersion "1.6.0"
#define MyAppPublisher "Anail, Inc."
#define MyAppURL "http://www.anail.cn/"
#define MyAppExeName "Stromnia.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{DA814DFD-C80A-4305-A83A-DA9409A80BD2}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=..\Strux\Strux_Licenses_InformationFiles\License.rtf
OutputDir=..\Installer\bin
OutputBaseFilename=stromnia_setup_1.6.0_win_x64
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={app}\StruxR2.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\StruxR2.ico"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"; IconFilename: "{app}\StruxR2.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\StruxR2.ico"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Files]
Source: "..\Strux\Strux_CodeBase\bin\win64\release\*"; DestDir: "{app}"; Flags: ignoreversion createallsubdirs recursesubdirs
Source: "packages\com.gondor.strux\data\*"; DestDir: "{app}\Installer\packages\com.gondor.strux\data"; Flags: ignoreversion createallsubdirs recursesubdirs
Source: "..\Strux\Strux_CodeBase\resources\icons\icons_strux\StruxR2.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Omnia\Omnia_CodeBase\bin\win64\release\*"; DestDir: "{app}"; Flags: ignoreversion createallsubdirs recursesubdirs
Source: "packages\com.gondor.omnia\data\*"; DestDir: "{app}\Installer\packages\com.gondor.omnia\data"; Flags: ignoreversion createallsubdirs recursesubdirs
Source: "..\Stromnia\bin\win64\release\*"; DestDir: "{app}"; Flags: ignoreversion createallsubdirs recursesubdirs

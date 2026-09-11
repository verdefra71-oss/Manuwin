#ifndef MyAppVersion
  #define MyAppVersion "1.0.0"
#endif
#ifndef MyAppBuild
  #define MyAppBuild "0"
#endif

#define MyAppName "Gestione Preventivi"
#define MyAppPublisher "Gestione Preventivi"
#define MyAppExeName "preventivi_app.exe"
#define MyAppId "B8A7D8D5-2D1B-4B7C-9F31-1C8C6B0D7A11"

[Setup]
AppId={{#MyAppId}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL=https://github.com/
DefaultDirName={autopf}\Gestione Preventivi
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir=installer-output
OutputBaseFilename=Gestione-Preventivi-Setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
PrivilegesRequired=admin
UninstallDisplayIcon={app}\{#MyAppExeName}
SetupIconFile=..\assets\logo.ico
VersionInfoVersion={#MyAppVersion}.0
VersionInfoDescription=Gestione Preventivi - versione {#MyAppVersion} (build {#MyAppBuild})
VersionInfoProductName={#MyAppName}
VersionInfoCompany={#MyAppPublisher}
VersionInfoProductVersion={#MyAppVersion}

[Languages]
Name: "italian"; MessagesFile: "compiler:Languages\Italian.isl"

[Files]
Source: "..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Avvia {#MyAppName}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}"

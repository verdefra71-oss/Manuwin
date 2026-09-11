#define AppName "Gestione Preventivi"
#define AppExeName "preventivi_app.exe"
#define AppVersion GetEnv("APP_VERSION")

[Setup]
AppId={{A4C8E1A2-3E71-4E9E-9C55-4B6D6B9A1D20}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher=Gestione Preventivi
DefaultDirName={autopf}\Gestione Preventivi
DefaultGroupName=Gestione Preventivi
OutputDir=output
OutputBaseFilename=Gestione-Preventivi-Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin
ArchitecturesInstallIn64BitMode=x64
UninstallDisplayIcon={app}\{#AppExeName}
SetupIconFile=..\windows\runner\resources\app_icon.ico

[Files]
Source: "..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\windows\runner\resources\app_icon.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Gestione Preventivi"; Filename: "{app}\{#AppExeName}"; IconFilename: "{app}\app_icon.ico"
Name: "{autodesktop}\Gestione Preventivi"; Filename: "{app}\{#AppExeName}"; IconFilename: "{app}\app_icon.ico"

[Run]
Filename: "{app}\{#AppExeName}"; Description: "Avvia Gestione Preventivi"; Flags: nowait postinstall skipifsilent

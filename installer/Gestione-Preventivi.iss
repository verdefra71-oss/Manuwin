#define MyAppName "Gestione Preventivi"
#define MyAppVersion "1.1.0"
#define MyAppPublisher "Gestione Preventivi"
#define MyAppExeName "preventivi_app.exe"

[Setup]
AppId={{A8C1F5B2-6B0E-4A91-9F0C-3B2F7A6D1E22}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\Gestione Preventivi
DefaultGroupName={#MyAppName}
OutputDir=..\build\installer
OutputBaseFilename=Gestione-Preventivi-Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ArchitecturesInstallIn64BitMode=x64
UninstallDisplayIcon={app}\{#MyAppExeName}

[Files]
Source: "..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Avvia {#MyAppName}"; Flags: nowait postinstall skipifsilent

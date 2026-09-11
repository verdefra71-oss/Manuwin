# Gestione Preventivi — versione Windows

Questa versione contiene un workflow GitHub Actions completo per creare automaticamente:

- `Gestione-Preventivi-Setup.exe` — installer Windows professionale;
- `Gestione-Preventivi-Windows-X.Y.Z.zip` — versione portatile.

## Come creare l'installer

1. Carica il progetto nel repository GitHub.
2. Apri **Actions**.
3. Seleziona **Build Gestione Preventivi Windows Installer**.
4. Premi **Run workflow**.
5. Al termine apri gli **Artifacts** del workflow.
6. Scarica `Gestione-Preventivi-Setup-X.Y.Z` per ottenere `Gestione-Preventivi-Setup.exe`.

Il workflow parte anche automaticamente a ogni `push` sul branch `main`.

## Versione automatica

La versione viene letta direttamente da `pubspec.yaml`:

```yaml
version: 1.1.0+2
```

Il numero `1.1.0` viene usato come versione dell'installer e il numero dopo `+` come build. Per una nuova release è sufficiente aggiornare `pubspec.yaml`, per esempio:

```yaml
version: 1.1.1+3
```

Non è necessario modificare il file Inno Setup.

## Installer

L'installer:

- installa l'app in `Program Files`;
- crea il collegamento nel menu Start;
- crea il collegamento sul Desktop;
- usa il logo dell'app come icona;
- registra correttamente la versione di Windows;
- permette la disinstallazione da Windows;
- avvia l'app al termine dell'installazione se l'utente lascia selezionata l'opzione.

La versione Windows non mostra la sezione notifiche e non inizializza le notifiche desktop.

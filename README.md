# GGuidotz/homebrew-tap

Tap Homebrew per le app di GGuidotz.

```
brew install --cask gguidotz/tap/nod
```

| Cask | App |
|---|---|
| `nod` | [Nod](https://github.com/GGuidotz/nod): approvazioni a mani libere e presenza per Cocaine, con AirPods e Apple Watch |

Le app non sono notarizzate da Apple: il cask toglie la quarantena all'installazione, così macOS non chiede "Apri comunque".
Aggiornare: `brew update && brew upgrade --cask nod`. Disinstallare: `brew uninstall --cask nod`.

Il cask viene aggiornato da `release.sh` del repo dell'app a ogni versione: non modificare `version` e `sha256` a mano.

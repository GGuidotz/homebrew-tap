# GGuidotz/homebrew-tap

Tap Homebrew per le app di GGuidotz.

```
brew trust gguidotz/tap
brew install --cask gguidotz/tap/nod
```

La prima riga serve una volta sola: le versioni recenti di Homebrew caricano solo i tap segnati come fidati.

| Cask | App |
|---|---|
| `knock` | [Knock](https://github.com/GGuidotz/knock): il tavolo accanto al Mac diventa un pannello di 8 interruttori, con il microfono o i sensori di movimento |
| `nod` | [Nod](https://github.com/GGuidotz/nod): approvazioni a mani libere e presenza per Cocaine, con AirPods e Apple Watch |
| `typewithme` | [Type_w/Me](https://github.com/GGuidotz/typewithme): il seguito di ciò che scrivi, in grigio, in qualunque app, con modelli che girano sul Mac |

Le app non sono notarizzate da Apple: il cask toglie la quarantena all'installazione, così macOS non chiede "Apri comunque".
Aggiornare: `brew update && brew upgrade --cask nod`. Disinstallare: `brew uninstall --cask nod`.

Il cask viene aggiornato da `release.sh` del repo dell'app a ogni versione: non modificare `version` e `sha256` a mano.

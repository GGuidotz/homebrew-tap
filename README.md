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
| `smartmemo` | [SmartMemo](https://github.com/GGuidotz/smartmemo): to-do e riunioni in schede piccole, con progetti, persone e date riconosciuti mentre scrivi (macOS 26) |
| `tivu` | [Tivu](https://github.com/GGuidotz/tivu): la TV LG collegata al Mac si comanda dalla barra dei menu, con volume, ingressi e telecomando via rete |
| `typewithme` | [Type_w/Me](https://github.com/GGuidotz/typewithme): il seguito di ciò che scrivi, in grigio, in qualunque app, con modelli che girano sul Mac |
| `whats-going-on` | [What's Going On](https://github.com/GGuidotz/whats-going-on): un monitor di sistema nella barra dei menu che dice in una frase cosa succede, con attrezzi per liberare spazio |

Nod e What's Going On si appoggiano a [Cocaine](https://github.com/Mattiakart/cocaine), che sta in un tap di terzi (`mattiakart/tap/cocaine`): i cask lo ricordano all'installazione.

Le app non sono notarizzate da Apple: il cask toglie la quarantena all'installazione, così macOS non chiede "Apri comunque".
Aggiornare: `brew update && brew upgrade --cask nod`. Disinstallare: `brew uninstall --cask nod`.

Il cask viene aggiornato da `release.sh` del repo dell'app a ogni versione: non modificare `version` e `sha256` a mano.

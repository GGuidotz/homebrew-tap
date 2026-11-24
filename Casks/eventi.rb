# frozen_string_literal: true

# Cask di Eventi per il tap GGuidotz/homebrew-tap. Version e sha256 li aggiorna release.sh.
cask "eventi" do
  version "0.2.1"
  sha256 "9681e7636576c74a82edb87d030f123e380846174306d4f6ead4e464edce82ea"

  url "https://github.com/GGuidotz/eventi/releases/download/v#{version}/Eventi-#{version}.dmg"
  name "Eventi"
  desc "Extracts the events in a text or document into an .ics file, on the Mac"
  homepage "https://github.com/GGuidotz/eventi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Eventi.app"

  postflight_steps do
    # L'app non è notarizzata (niente account Apple Developer): togliere la quarantena evita "Apri comunque".
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Eventi.app"],
        writable_paths: ["{{appdir}}/Eventi.app"],
        must_succeed:   false
  end

  uninstall quit: "local.eventi.app"

  zap trash: "~/Library/Preferences/local.eventi.app.plist"

  caveats <<~EOS
    Gemma runs through llama.cpp, which Eventi does not include:
      brew install llama.cpp
    Apple Intelligence and the rule engine work without it.
  EOS
end

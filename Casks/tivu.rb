# frozen_string_literal: true

# Cask di Tivu per il tap GGuidotz/homebrew-tap. Version e sha256 li aggiorna release.sh.
cask "tivu" do
  version "0.1.0"
  sha256 "5859feca121096191f9ef0309649b3a671da46a45f2c1d95c0e7a486d8fed402"

  url "https://github.com/GGuidotz/tivu/releases/download/v#{version}/Tivu-#{version}.dmg"
  name "Tivu"
  desc "Menu bar remote for LG webOS TVs: volume, inputs and power over the network"
  homepage "https://github.com/GGuidotz/tivu"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Tivu.app"

  postflight_steps do
    # L'app non è notarizzata (niente account Apple Developer): togliere la quarantena evita "Apri comunque".
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Tivu.app"],
        writable_paths: ["{{appdir}}/Tivu.app"],
        must_succeed:   false
  end

  uninstall quit: "local.tivu.app"

  zap trash: [
    "~/Library/Preferences/local.tivu.app.plist",
  ]

  caveats <<~EOS
    Tivu lives in the menu bar. The first time, accept the connection on the TV with its remote.
    To use the keyboard volume keys, allow Tivu in System Settings > Privacy & Security > Accessibility.
  EOS
end

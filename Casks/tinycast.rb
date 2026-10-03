cask "tinycast" do
  version "0.11.12"
  sha256 "ea9b53b91b4c9f3334d9ed86674e7ce38ad218ac0c889ee6c5533564a1842c85"

  url "https://github.com/subhashhhhhh/tinycast-fork/releases/download/v#{version}/Tinycast-#{version}.dmg"
  name "Tinycast"
  desc "Tiny, fully native launcher, hotkeys, and clipboard history"
  homepage "https://github.com/subhashhhhhh/tinycast-fork"

  auto_updates true

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Tinycast.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Tinycast.app"]
  end

  uninstall quit: "com.tinycast.app"

  zap login_item: "Tinycast",
      trash:      [
        "~/Library/Application Support/com.tinycast.app",
        "~/Library/Caches/com.tinycast.app",
        "~/Library/Preferences/com.tinycast.app.plist",
        "~/Library/Saved Application State/com.tinycast.app.savedState",
      ]
end

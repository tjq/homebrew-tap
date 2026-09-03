cask "tiltbar" do
  version "0.1.0"
  sha256 "6d76074244cd621d67827c855095f17ad57c84cd4c168ed5152bb9d34179d04b"

  url "https://github.com/tjq/homebrew-tap/releases/download/tiltbar-v#{version}/TiltBar-#{version}.zip"
  name "TiltBar"
  desc "Menu bar status and triggers for a running Tilt dev environment"
  homepage "https://github.com/tjq/tiltbar"

  depends_on macos: :ventura

  app "TiltBar.app"

  zap trash: [
    "~/Library/Preferences/com.tjq.tiltbar.plist",
    "~/Library/LaunchAgents/com.tjq.tiltbar.plist",
  ]
end

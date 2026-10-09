cask "tiltbar" do
  version "0.4.1"
  sha256 "52f5e347863c7373897cce3ce59ebf09952b4bf88fea3c33899da79cb5025a09"

  url "https://github.com/tjq/tiltbar/releases/download/v#{version}/TiltBar-#{version}.zip"
  name "TiltBar"
  desc "Menu bar status and triggers for a running Tilt dev environment"
  homepage "https://github.com/tjq/tiltbar"

  depends_on macos: :ventura

  app "TiltBar.app"

  zap trash: [
    "~/Library/Preferences/com.tjq.tiltbar.plist",
    "~/Library/LaunchAgents/com.tjq.tiltbar.plist",
    "~/Library/Logs/TiltBar",
  ]
end

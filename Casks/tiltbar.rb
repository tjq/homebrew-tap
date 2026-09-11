cask "tiltbar" do
  version "0.3.0"
  sha256 "44670cd8ba2539077883ae26f67b80a04b01bc13194bb3bdc993d0eb4deb062d"

  url "https://github.com/tjq/tiltbar/releases/download/v#{version}/TiltBar-#{version}.zip"
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

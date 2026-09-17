cask "tiltbar" do
  version "0.3.1"
  sha256 "07ec150769f3ca3cf6e068c5e5e71921bf479bd7a30f95b6d35614f4d03a54e0"

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

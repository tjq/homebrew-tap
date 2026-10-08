cask "tiltbar" do
  version "0.4.0"
  sha256 "7e4e7935e0386560cd89fe2669850a18cf7b1176b7d344d49b903b40a126aa52"

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

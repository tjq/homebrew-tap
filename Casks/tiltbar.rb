cask "tiltbar" do
  version "0.2.0"
  sha256 "02c2d38d86b5f37f24d5c9cf1934ca1ed255ed2452814fddf2da6b2353e3d1c0"

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

cask "extendo" do
  version "1.3.0"
  sha256 "228d7a76685573d320a2c26a4afe64e2b5d3ae64b9db78d49e4034fb09ffd4cc"

  url "https://github.com/tjq/homebrew-tap/releases/download/v#{version}/extendo-#{version}.zip",
      verified: "github.com/tjq/homebrew-tap/"
  name "extendo"
  desc "Menu bar clipboard history manager with encrypted iCloud sync"
  homepage "https://extendo.poob.me"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "extendo.app"

  zap trash: [
    "~/Library/Containers/com.tjq.extendo",
  ]
end

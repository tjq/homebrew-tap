cask "extendo" do
  version "1.2.0"
  sha256 "f220320d406bad445d526ca74e367ba894753e35b31dbbef99d92133634d8df9"

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

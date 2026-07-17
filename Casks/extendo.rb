cask "extendo" do
  version "1.1.1"
  sha256 "3bb32b5d2681ba46767173867b654d711b191c0e2b3216a83119718977ab39dd"

  url "https://github.com/tjq/homebrew-tap/releases/download/v#{version}/extendo-#{version}.zip"
  name "extendo"
  desc "Menu bar clipboard history manager with encrypted iCloud sync"
  homepage "https://extendo.poob.me"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "extendo.app"

  zap trash: [
    "~/Library/Containers/com.tjq.extendo",
  ]
end

cask "extendo" do
  version "1.2.1"
  sha256 "4e117a8cd43606880ec4be56f280241fecc3e49764a06cbbb7054203f371768e"

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

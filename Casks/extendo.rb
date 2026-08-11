cask "extendo" do
  version "1.4.0"
  sha256 "2e72719d8087b4ec2719d928ca4cde089748565063b7fe768e6d9697c687c7ac"

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

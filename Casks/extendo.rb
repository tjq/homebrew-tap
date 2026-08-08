cask "extendo" do
  version "1.3.0"
  sha256 "804dd850eb83eb250347e7d92f2681d15c1d50ecc1859eec8270669fd1f3f538"

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

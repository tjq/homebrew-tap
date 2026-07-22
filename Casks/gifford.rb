cask "gifford" do
  version "1.0.0"
  sha256 "be4d1f349389773ea586aead99d2c2a2741a459b72fbc5b321aa96dd027c42b1"

  url "https://github.com/tjq/gifford/releases/download/v#{version}/Gifford-#{version}.zip"
  name "Gifford"
  desc "Menu bar app that converts screen recordings to GIFs"
  homepage "https://github.com/tjq/gifford"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur
  depends_on formula: "ffmpeg"

  app "Gifford.app"

  zap trash: [
    "~/Library/Preferences/run.porter.tyler.gifford.plist",
  ]
end

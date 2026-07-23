cask "slashbar" do
  version "0.3.6"
  sha256 "8a7cb9a18f3666aa2c019d9d71fdef02c9746097554d087bd0094018c6cc4cdc"

  url "https://github.com/harun-yardimci/slashbar/releases/download/v#{version}/Slashbar.dmg",
      verified: "github.com/harun-yardimci/slashbar/"
  name "Slashbar"
  desc "Command bar for macOS — press / and run 100+ actions"
  homepage "https://slashbar.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Slashbar.app"

  zap trash: [
    "~/Library/Application Support/Slashbar",
    "~/Library/Preferences/com.slashbar.app.plist",
  ]
end

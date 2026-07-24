cask "slashbar" do
  version "0.3.7"
  sha256 "ebdd30f303c1433795b1c6395900d6ce70ccf7db2d497446fd15f370454c8871"

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

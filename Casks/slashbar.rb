cask "slashbar" do
  version "0.3.11"
  sha256 "2190273fcfb37e5b9c513d2b3a30bad75ba99a460f06076150360880a6a01e7a"

  url "https://github.com/harun-yardimci/slashbar/releases/download/v#{version}/Slashbar.dmg",
      verified: "github.com/harun-yardimci/slashbar/"
  name "Slashbar"
  desc "Command bar for macOS — press / and run 100+ actions"
  homepage "https://slashbar.app"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Slashbar.app"

  zap trash: [
    "~/Library/Application Support/Slashbar",
    "~/Library/Preferences/com.slashbar.app.plist",
  ]
end

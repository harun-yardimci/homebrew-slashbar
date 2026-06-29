cask "slashbar" do
  version "0.1.1"
  sha256 "b85aae17baf3617c4a1875ed7fb2e27bf60b05ba0540981892b02458711c06a6"

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

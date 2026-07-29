cask "slashbar" do
  version "0.3.15"
  sha256 "ce43dcd9546dd18aa17f6a58639e14877fa9d2364958b82ba90843b8f5ec48e5"

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

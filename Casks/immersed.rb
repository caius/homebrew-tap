cask "immersed" do
  version "21.1.2"
  sha256 "12531166528d352cade049dc3c7de62259169c25aa3033408cf1b760a7b6b547"

  url "https://static.immersed.com/dl/Immersed.dmg"
  name "immersed"
  desc "Empower work with Spatial Computing"
  homepage "https://immersed.com/"

  app "Immersed.app"

  uninstall quit: "team.Immersed", kext: "team.Immersed.VirtualCamera"

  zap trash: [
    "~/Library/Application Support/Immersed",
    "~/Library/Caches/team.Immersed",
    "~/Library/Preferences/team.Immersed.plist",
  ]
end

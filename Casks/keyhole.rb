cask "keyhole" do
  on_sequoia :or_newer do
    version "1.2"
    sha256 "3396caeaf794f547ac4301236e5e956100f9992dd9d196db00ab284f30303744"
  end

  url "https://github.com/iKenndac/Keyhole/releases/download/#{version}/Keyhole.zip",
      verified: "github.com/iKenndac/Keyhole/"
  name "Keyhole"
  desc "Keep media key presses focused on your media player"
  homepage "https://ikennd.ac/keyhole/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Keyhole.app"

  uninstall quit: "org.danielkennett.Keyhole"

  zap trash: "~/Library/Preferences/org.danielkennett.Keyhole.plist"
end

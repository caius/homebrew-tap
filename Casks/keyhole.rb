cask "keyhole" do
  on_sequoia :or_newer do
    version "1.1.1"
    sha256 "2295179ab74cedb614545f5fbcf2bd250fa8985a4d9846e2bfdc8c7cdb31db86"
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

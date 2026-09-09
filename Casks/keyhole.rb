cask "keyhole" do
  on_sequoia :or_newer do
    version "1.2.1"
    sha256 "914b4788f25b0705acee13519292ea8717b7d3d914188f6b270b11ec32bb5f7a"
  end

  url "https://github.com/iKenndac/Keyhole/releases/download/#{version}/Keyhole.zip"
  name "Keyhole"
  desc "Keep media key presses focused on your media player"
  homepage "https://ikennd.ac/keyhole/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Keyhole.app"

  uninstall quit: "org.danielkennett.Keyhole"

  zap trash: "~/Library/Preferences/org.danielkennett.Keyhole.plist"
end

cask "lolgato" do
  version "1.7.0"
  sha256 "ca64bdfdf7e62409e56d3fc08afd65e6cea40d6eb90751f2c69d5fcb62115395"

  url "https://github.com/raine/Lolgato/releases/download/v#{version}/Lolgato.dmg"
  name "Lolgato"
  desc "Enhanced control over Elgato Lights"
  homepage "https://github.com/raine/Lolgato"

  livecheck do
    url :url
    strategy :github_releases
  end

  app "Lolgato.app"

  uninstall quit: "fi.zendit.Lolgato"

  zap trash: [
    "~/Library/Caches/fi.zendit.Lolgato",
    "~/Library/Preferences/fi.zendit.Lolgato.plist",
  ]
end

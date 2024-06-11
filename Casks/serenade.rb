cask "serenade" do
  version "2.0.2"
  sha256 "5544a3629b869a75c0cc230c25a436f30a27c6dae2597b0bab87cad414f23dfd"
  url "https://serenadecdn.com/app/Serenade-#{version}.dmg"

  name "serenade"
  desc "Write code with your voice"
  homepage "https://serenade.ai/"

  app "Serenade.app"

  uninstall quit: "com.electron.serenade"

  zap trash: [
    "~/Library/Application\ Support/Serenade",
    "~/Library/Saved Application State/com.electron.serenade.savedState",
    "~/Library/Preferences/com.electron.serenade.plist",
  ]
end

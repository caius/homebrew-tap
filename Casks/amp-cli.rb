cask "amp-cli" do
  version "0.0.1772698161-g732433"
  sha256 "d11305132fe96f543ad23ec913ddef850397206c2863dfc68472608b9d23c5cd"

  url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/#{version}/amp-darwin-arm64",
      verified: "storage.googleapis.com/amp-public-assets-prod-0/"
  name "Amp CLI"
  desc "Frontier coding agent that lets you wield the full power of leading models"
  homepage "https://ampcode.com/"

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/.+/i)
  end

  auto_updates true

  binary "amp-darwin-arm64", target: "amp"

  zap trash: [
    "~/.config/amp",
    "~/Library/Application Support/amp",
  ]
end

cask "amp-cli" do
  version "0.0.1773735023-g6a26c6"
  sha256 "8cffa3042f1e7653e433cf8ccf6673758505a13d9315651b6e21e33e3013da94"

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

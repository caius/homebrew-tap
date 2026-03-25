cask "amp-cli" do
  version "0.0.1774426196-g2b2a50"
  sha256 "0d7011e207ef9eb4e4a2169a649dd3c65b090825342136cbe85b066ca2efffb6"

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

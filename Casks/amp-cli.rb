cask "amp-cli" do
  version "0.0.1767254483-g812f6b"
  sha256 "b8e63fb0e7cb559be03b991de88c3dcb6198b06fce852b67fe727e0b103df3cb"

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

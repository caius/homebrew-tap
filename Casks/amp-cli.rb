cask "amp-cli" do
  version "0.0.1774080164-g6778d9"
  sha256 "206b26e03627a1a0beb45e422b15708727f1df5f470eca9d6a69cb9a9a9a1fae"

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

cask "amp-cli" do
  version "0.0.1767168080-g527af6"
  sha256 "0cdbc834a587e1b9226c0a605de5d5133cc8f3eddc93e7c3d966eb305ec7fd5c"

  url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/#{version}/amp-darwin-arm64"
  name "Amp CLI"
  desc "Frontier coding agent that lets you wield the full power of leading models"
  homepage "https://ampcode.com/"

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/.+/i)
  end

  auto_updates true

  binary "amp-darwin-arm64", target: "amp"
end

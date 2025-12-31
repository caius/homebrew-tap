class AmpCli < Formula
  desc "Frontier coding agent that lets you wield the full power of leading models"
  homepage "https://ampcode.com/"
  url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1767168080-g527af6/amp-darwin-arm64"
  version "0.0.1767168080-g527af6"
  sha256 "0cdbc834a587e1b9226c0a605de5d5133cc8f3eddc93e7c3d966eb305ec7fd5c"

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/.+/i)
  end

  def install
    chmod 0555, "amp-darwin-arm64"
    bin.install "amp-darwin-arm64" => "amp"
  end

  test do
    system bin/"amp", "--version"
  end
end

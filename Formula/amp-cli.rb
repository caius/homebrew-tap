class AmpCli < Formula
  desc "Frontier coding agent that lets you wield the full power of leading models"
  homepage "https://ampcode.com/"
  url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1767081702-g9c13ac/amp-darwin-arm64"
  version "0.0.1767081702-g9c13ac"
  sha256 "471d8c0b7e26436d46781146bba0db8aa30bcdc866de914e961b4f1a17fb9e91"

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

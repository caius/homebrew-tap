class AmpCli < Formula
  desc "Frontier coding agent that lets you wield the full power of leading models"
  homepage "https://ampcode.com/"
  url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1766736084-gd834e3/amp-darwin-arm64"
  version "0.0.1766736084-gd834e3"
  sha256 "4f8b39c5c1aa07983c681ae33f4789264eca78b99ebb95b2caf988cab32a5d74"

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

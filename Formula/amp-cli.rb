class AmpCli < Formula
  desc "Frontier coding agent that lets you wield the full power of leading models"
  homepage "https://ampcode.com/"
  url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1766649687-ge52779/amp-darwin-arm64"
  version "0.0.1766649687-ge52779"
  sha256 "00c5b1cfa00c2fe4ba9b6d1e6de01efe7ab0ea7756888aa189b98460cab86879"

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

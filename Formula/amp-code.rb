class AmpCode < Formula
  version "0.0.1766563889-gdc4216"
  sha256 "30949f4ee4f13e42f9377cd5f33f8e789bfc9f8e19b05d6cdc660ae255dcfcba"

  url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1766563889-gdc4216/amp-darwin-arm64"
  desc "Frontier coding agent that lets you wield the full power of leading models"
  homepage "https://ampcode.com/"

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/.+/)
  end

  def install
    system "chmod", "+x", "amp-darwin-arm64"
    bin.install "amp-darwin-arm64" => "amp"
  end

  test do
    system bin/"amp", "--version"
  end
end

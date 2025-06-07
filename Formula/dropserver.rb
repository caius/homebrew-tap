class Dropserver < Formula
  version "0.13.3"
  sha256 "732e987ce6098a61e5c726823996db32bcc21134d2f94fc4450682072c568721"

  url "https://github.com/teleclimber/Dropserver/releases/download/v#{version}/ds-dev-amd64-darwin.tar.gz"
  desc "An application platform for your personal web services."
  homepage "https://dropserver.org/"
  license "apache-2.0"

  #head "https://github.com/teleclimber/Dropserver.git", branch: "master"

  livecheck do
    url :url
  end

  def install
    bin.install "ds-dev"
  end

  test do
    assert_equal "ds-dev version: v#{version}", `#{bin}/ds-dev version | head -n1`.chomp
  end
end

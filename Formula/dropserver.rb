class Dropserver < Formula
  version "0.13.2"
  sha256 "2976b3fed485afe7faaef2700fe47c6914121083524d9889bfbddfeb4a6f1463"

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

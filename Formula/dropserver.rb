class Dropserver < Formula
  version "0.10.0"
  sha256 "6c488022a9e42faa0a8ebe409fd34e51880eeb415bed7e8cf6e4de8ef5a2ed6c"

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

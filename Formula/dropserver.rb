class Dropserver < Formula
  version "0.14.4"
  sha256 "fcdeb56da86e82a53887998eaa09345096c82e790a92b10259a2c8b29e388642"

  url "https://github.com/teleclimber/Dropserver/releases/download/v#{version}/ds-dev-MacOS-arm64.tar.gz"
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

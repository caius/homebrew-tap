class Harvest < Formula
  desc "Track your time in Harvest via the terminal"
  homepage "https://github.com/planetargon/harvest-tui"
  url "https://github.com/planetargon/harvest-tui/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "e44b76313cc3e0001d001262766feddcdadc8e0f4f211923336130e1939702da"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/harvest-tui"
  end

  test do
    ENV["HOME"] = testpath
    output = shell_output("#{bin}/harvest-tui 2>&1", 1)
    assert_match "could not load config file", output
  end
end

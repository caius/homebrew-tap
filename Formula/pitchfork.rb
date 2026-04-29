class Pitchfork < Formula
  desc "CLI for managing daemons with a focus on developer experience"
  homepage "https://pitchfork.jdx.dev"
  url "https://github.com/jdx/pitchfork/archive/refs/tags/v2.8.0.tar.gz"
  sha256 "178ddcb3220c87fce1b0407d1fcfb621ea108d79c1251b5baceb5b35abe23ead"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"pitchfork", "--version"
  end
end

class Pitchfork < Formula
  desc "CLI for managing daemons with a focus on developer experience"
  homepage "https://pitchfork.jdx.dev"
  url "https://github.com/jdx/pitchfork/archive/refs/tags/v2.12.0.tar.gz"
  sha256 "362c0534c00863ba2fe21ed8eb0fbb6f9fd7822295e0f61f85347cd452e5215b"
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

class Pitchfork < Formula
  desc "CLI for managing daemons with a focus on developer experience"
  homepage "https://pitchfork.jdx.dev"
  url "https://github.com/jdx/pitchfork/archive/refs/tags/v2.11.0.tar.gz"
  sha256 "ba564d1cd429aff1737baa24df1c2c0ac66c1cfeff95d54eee73b6adfa81620e"
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

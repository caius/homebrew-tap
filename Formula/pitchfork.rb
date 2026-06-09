class Pitchfork < Formula
  desc "CLI for managing daemons with a focus on developer experience"
  homepage "https://pitchfork.jdx.dev"
  url "https://github.com/jdx/pitchfork/archive/refs/tags/v2.13.1.tar.gz"
  sha256 "4896b03f16e54d0bad34b5d80a72572721316f8c8b8d2af5f268bb500ff1426b"
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

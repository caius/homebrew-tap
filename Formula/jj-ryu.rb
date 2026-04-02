class JjRyu < Formula
  desc "Stacked PRs for Jujutsu - push bookmark stacks as chained pull requests"
  homepage "https://github.com/dmmulroy/jj-ryu"
  url "https://github.com/dmmulroy/jj-ryu/archive/refs/tags/v0.0.1-alpha.11.tar.gz"
  sha256 "a7522e73b4313928ef7fbcae660e702875ac79769d3abbf63c711f6b64e091e0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_releases
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"ryu", "--version"
  end
end

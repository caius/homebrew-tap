class Si < Formula
  desc "System Initiative CLI tool for managing schemas, templates, and components"
  homepage "https://systeminit.com/"
  url "https://github.com/systeminit/si/archive/refs/tags/release/20260115.224841.0-sha.d57a38e8.tar.gz"
  version "20260115.224841.0-sha.d57a38e8"
  sha256 "4f1405c47fa3837c83ea3b82ccb0f04f3f74e90dcfe3ae473b344c5382809c00"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/systeminit/si.git"
    strategy :git
    regex(%r{^release/(.+)$}i)
  end

  depends_on "deno" => :build

  def install
    cd "bin/si" do
      system "deno", "task", "build"
      bin.install "si"
    end
  end

  test do
    system bin/"si", "--version"
  end
end

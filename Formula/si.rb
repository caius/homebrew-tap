class Si < Formula
  desc "System Initiative CLI tool for managing schemas, templates, and components"
  homepage "https://systeminit.com/"
  url "https://github.com/systeminit/si/archive/refs/tags/release/20260106.225402.0-sha.cb218ff6.tar.gz"
  version "20260106.225402.0-sha.cb218ff6"
  sha256 "6a92d6c0477c0d14f27e2f0ffc7db1f4822614fd136e31d39a5cc2c8cc0c5629"
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

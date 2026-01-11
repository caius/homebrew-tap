class Si < Formula
  desc "System Initiative CLI tool for managing schemas, templates, and components"
  homepage "https://systeminit.com/"
  url "https://github.com/systeminit/si/archive/refs/tags/release/20260109.221838.0-sha.d06b7ce9.tar.gz"
  version "20260109.221838.0-sha.d06b7ce9"
  sha256 "28be87eea1da5cc99628476503c9872706ddf88d162610d82b05599b5424fbd9"
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

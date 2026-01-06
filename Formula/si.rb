class Si < Formula
  desc "System Initiative CLI tool for managing schemas, templates, and components"
  homepage "https://systeminit.com/"
  url "https://github.com/systeminit/si/archive/refs/tags/release/20260106.015855.0-sha.5379e6de.tar.gz"
  version "20260106.015855.0-sha.5379e6de"
  sha256 "2097e54fa91e2d6c4064cd14d05fa3bbb68e8aee6b3f9e714fe582c764747b13"
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

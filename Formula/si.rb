class Si < Formula
  desc "System Initiative CLI tool for managing schemas, templates, and components"
  homepage "https://systeminit.com/"
  url "https://github.com/systeminit/si/archive/refs/tags/release/20260123.145314.0-sha.69ff7784.tar.gz"
  version "20260123.145314.0-sha.69ff7784"
  sha256 "1962f3e6c0aab0da4f89e175a837ac9b1871d1ef83f2b7acd383b096548bb3a3"
  license "Apache-2.0"

  deprecate! date: "2026-01-28", because: :deprecated_upstream

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

class Si < Formula
  desc "System Initiative CLI tool for managing schemas, templates, and components"
  homepage "https://systeminit.com/"
  url "https://github.com/systeminit/si/archive/refs/tags/release/20260112.223803.0-sha.0ae9a096.tar.gz"
  version "20260112.223803.0-sha.0ae9a096"
  sha256 "66067031d06a6e751e3f0a9ce35453b905d281c40608e929a913b746fc4e38bf"
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

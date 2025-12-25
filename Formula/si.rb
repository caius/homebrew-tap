class Si < Formula
  desc "System Initiative CLI tool for managing schemas, templates, and components"
  homepage "https://systeminit.com/"
  url "https://github.com/systeminit/si/archive/refs/tags/v0.5.tar.gz"
  sha256 "62524907ac6158eed83e4c5e035689f39a7f2a164d501592a434e40f5db4e311"
  license "Apache-2.0"

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

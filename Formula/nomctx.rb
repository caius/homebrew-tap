class Nomctx < Formula
  desc "Faster way to switch between clusters and namespaces in nomad"
  homepage "https://github.com/mr-karan/nomctx"
  url "https://github.com/mr-karan/nomctx/archive/refs/tags/v0.2.7.tar.gz"
  sha256 "d06fba7993adde57f337135be7d6ace19393229f6518ce9c883fafebb5530326"
  license "MIT"

  head "https://github.com/mr-karan/nomctx.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build",
      *std_go_args,
      "-ldflags", "-s -w #{"-X main.buildString=#{version} " unless build.head?}",
      "./"
  end

  test do
    assert_equal "nomctx version #{version}", `#{bin}/nomctx --version`.chomp
  end
end

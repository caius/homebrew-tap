class Nomctx < Formula
  desc "Faster way to switch between clusters and namespaces in nomad"
  homepage "https://github.com/mr-karan/nomctx"
  url "https://github.com/mr-karan/nomctx/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "65dcc1dd4c07ab699661894b10871a42d608abaed24d20660b4e0f51a0888403"
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

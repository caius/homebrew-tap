class Nomctx < Formula
  sha256 "a899e16fc8324d46222ac641449e817008c26997cd6b78ba4ae8bd7ea190f165"

  url "https://github.com/mr-karan/nomctx/archive/v0.2.4.tar.gz"
  desc "Faster way to switch between clusters and namespaces in nomad"
  homepage "https://github.com/mr-karan/nomctx"
  license "MIT"

  head "https://github.com/mr-karan/nomctx.git", branch: "master"

  livecheck do
    url :url
  end

  depends_on "go" => :build

  def install
    system "go", "build",
      *std_go_args,
      "-ldflags", "-s -w #{"-X main.buildString=#{version} " unless build.head?}",
      "./cmd"
  end

  test do
    assert_equal "pgmetrics: /dev/null: EOF", `#{bin}/pgmetrics -i /dev/null 2>/dev/stdout`.chomp
  end
end

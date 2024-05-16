class Nomctx < Formula
  sha256 "da88c70d2d2efab6f5be3b311c4cb09c717292d2cb51f5a61151cd07a23a03f4"

  url "https://github.com/mr-karan/nomctx/archive/v0.2.5.tar.gz"
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

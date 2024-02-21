class Pgmetrics < Formula
  sha256 "298c7136c435c140691a1ff3298972e6c9c389360cdc74410854d8bcb4f46470"

  url "https://github.com/rapidloop/pgmetrics/archive/v1.15.1.tar.gz"
  desc "Collects and displays various information and statistics from a running PostgreSQL server"
  homepage "https://pgmetrics.io/"
  license "apache-2.0"

  head "https://github.com/rapidloop/pgmetrics.git", branch: "master"

  livecheck do
    url :url
  end

  depends_on "go" => :build

  def install
    system "go", "build",
      *std_go_args,
      "-a", "-trimpath",
      "-ldflags", "-s -w #{"-X main.version=#{version} " unless build.head?}-extldflags \"-static\"",
      "./cmd/pgmetrics"
  end

  test do
    assert_equal "pgmetrics: /dev/null: EOF", `#{bin}/pgmetrics -i /dev/null 2>/dev/stdout`.chomp
  end
end

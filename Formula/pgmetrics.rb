class Pgmetrics < Formula
  sha256 "956d229d6e8c491f1b7524327a4e0f6104f060eb7da65cffe31cec96bc308eac"

  url "https://github.com/rapidloop/pgmetrics/archive/v1.17.0.tar.gz"
  desc "Collects and displays various information and statistics from a running PostgreSQL server"
  homepage "https://pgmetrics.io/"
  license "apache-2.0"

  head "https://github.com/rapidloop/pgmetrics.git", branch: "master"

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

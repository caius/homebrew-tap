class Pgmetrics < Formula
  version "1.12.0"
  sha256 "82f2527b4754f3b96282d14de7ddbd98fa7030ede193361062b6a83f51c68acf"

  url "https://github.com/rapidloop/pgmetrics/archive/v#{version}.tar.gz"
  desc "Collects and displays various information and statistics from a running PostgreSQL server"
  homepage "https://pgmetrics.io/"
  license "apache-2.0"

  head "https://github.com/rapidloop/pgmetrics.git", branch: "master"

  livecheck do
    url :url
  end

  depends_on "go@1.17" => :build

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

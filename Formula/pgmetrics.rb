class Pgmetrics < Formula
  desc "Collects/displays information/statistics from a running PostgreSQL server"
  homepage "https://pgmetrics.io/"
  url "https://github.com/rapidloop/pgmetrics/archive/refs/tags/v1.18.0.tar.gz"
  sha256 "aa47fe07ad4e032d9f4c09d2727c866f1594df2ad191528fd8893c43f01a108c"
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

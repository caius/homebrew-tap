class Pgmetrics < Formula
  sha256 "59c9c32be979071bb029bf21e4cfe7c8fd81f5ff8c8967e7e67fe30f3c4aa23e"

  url "https://github.com/rapidloop/pgmetrics/archive/v1.16.0.tar.gz"
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

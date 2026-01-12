class Tailsnitch < Formula
  desc "Security audit for your tailscale configuration"
  homepage "https://github.com/Adversis/tailsnitch"
  url "https://github.com/Adversis/tailsnitch/archive/refs/tags/v1.4.tar.gz"
  sha256 "caac1e6f314dfc8e6c572a7a32d796f7e5c86f251dec1f873848b84af89e9ee1"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/Adversis/tailsnitch/cmd.Version=#{version}
      -X github.com/Adversis/tailsnitch/cmd.BuildID=#{tap.user}
      -X github.com/Adversis/tailsnitch/cmd.BuildDate=#{time.iso8601}
    ]
    system "go", "build", *std_go_args(ldflags:)
  end

  test do
    system bin/"tailsnitch", "--version"
  end
end

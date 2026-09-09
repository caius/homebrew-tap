class Tailsnitch < Formula
  desc "Security audit for your tailscale configuration"
  homepage "https://github.com/Adversis/tailsnitch"
  url "https://github.com/Adversis/tailsnitch/archive/refs/tags/v1.7.tar.gz"
  sha256 "292857298804842246b3eccc9843a32e30f30a8c359c201fdc6402fff46f6802"
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

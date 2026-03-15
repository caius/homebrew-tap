class Tailsnitch < Formula
  desc "Security audit for your tailscale configuration"
  homepage "https://github.com/Adversis/tailsnitch"
  url "https://github.com/Adversis/tailsnitch/archive/refs/tags/v1.5.tar.gz"
  sha256 "a285d24a5084a3f6cbb2bc5aaf42c67f538db47fb7e150f1ac175b74c9fe1cbd"
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

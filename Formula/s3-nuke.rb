class S3Nuke < Formula
  desc "Tool to nuke S3 buckets including versioned objects"
  homepage "github.com/soapiestwaffles/s3-nuke"
  url "https://github.com/soapiestwaffles/s3-nuke/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "1b63d474e000cf9921a65f3f063826e314d9e683e84f685dd962941905893527"
  head "https://github.com/soapiestwaffles/s3-nuke", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=99fdb7dfc7ce237368c07657c3b4e132cc2ee02b
      -X main.date=#{Time.now.utc.iso8601}
    ]

    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    system bin/"s3-nuke", "--version"
  end
end

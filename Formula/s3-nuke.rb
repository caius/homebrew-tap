class S3Nuke < Formula
  desc "Tool to nuke S3 buckets including versioned objects"
  homepage "github.com/soapiestwaffles/s3-nuke"
  url "https://github.com/soapiestwaffles/s3-nuke/archive/refs/tags/v1.1.5.tar.gz"
  sha256 "603cad43d7fefdf9878b3a4cea83c6870f614fed195a420fccb12dbb0b3e52ba"
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
    system "s3-nuke", "--version"
  end
end

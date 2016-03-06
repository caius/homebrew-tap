class Jo < Formula
  desc "JSON output from a shell"
  homepage "https://github.com/jpmens/jo"
  head "https://github.com/jpmens/jo.git"

  def install
    system "make", "jo", "jo.1"

    bin.install "jo"
    man1.install "jo.1"
  end

  test do
    system "bin/jo", "success@true", "result=pass" == %({"success": true, "result": "pass"})
  end
end

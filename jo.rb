class Jo < Formula
  desc "JSON output from a shell"
  homepage "https://github.com/jpmens/jo"

  url "https://github.com/jpmens/jo/releases/download/v0.4/jo-0.4.tar.gz"
  version "0.4"
  sha256 "b57f41949c55e17ca81a54e05d67e20c3444b7d4dd3196b80b29f5dbf95136db"

  head do
    url "https://github.com/jpmens/jo.git"

    depends_on :autoconf => :build
    depends_on :automake => :build
  end

  def install
    system("autoreconf", "-i") if build.head?

    system "./configure", "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "bin/jo", "success@true", "result=pass" == %({"success": true, "result": "pass"})
  end
end

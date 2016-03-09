class Jo < Formula
  desc "JSON output from a shell"
  homepage "https://github.com/jpmens/jo"

  url "https://github.com/jpmens/jo/releases/download/v0.7/jo-0.7.tar.gz"
  sha256 "3c948e5035ecd90666e4cae6ed9eaead709b5a482f2d9f788a81be5a06e14176"

  head do
    url "https://github.com/jpmens/jo.git"

    depends_on "autoconf" => :build
    depends_on "automake" => :build
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

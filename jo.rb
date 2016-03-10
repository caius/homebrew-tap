class Jo < Formula
  desc "JSON output from a shell"
  homepage "https://github.com/jpmens/jo"

  url "https://github.com/jpmens/jo/releases/download/v0.9/jo-0.9.tar.gz"
  sha256 "e757d17469e5c9682ebdd8c7a88b7231303bd0fca2a69ffedbcf24835eaa241f"

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

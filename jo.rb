class Jo < Formula
  desc "JSON output from a shell"
  homepage "https://github.com/jpmens/jo"

  url "https://github.com/jpmens/jo/releases/download/v0.6/jo-0.6.tar.gz"
  sha256 "09cc71a39fd9cfece8edd9a97bac186d585add1687050d23729cfe900aa2e59e"

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

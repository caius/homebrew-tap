class Swamp < Formula
  desc "AI native automation CLI, built for agents"
  homepage "https://github.com/systeminit/swamp"
  version "20260510.223837.0-sha.33c9db24"
  license "AGPL-3.0-only"

  livecheck do
    url :stable
    strategy :github_releases
    regex(/^v?(\d+\.\d+\.\d+-sha\.\h+)$/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/systeminit/swamp/releases/download/v20260510.223837.0-sha.33c9db24/swamp-darwin-aarch64"
      sha256 "0e91df1d0beffb7a64561ba7870577da579fdd88ab11d42f5b6e9a343832dce6"
    end

    on_intel do
      url "https://github.com/systeminit/swamp/releases/download/v20260418.005854.0-sha.c17d3e4c/swamp-darwin-x86_64"
      sha256 "10bf914af65603d6f7437a8fa29cb5d4fde6b001d04a02c09e925d5b9df321f1"
    end
  end

  def install
    binary = Dir["swamp-*"].first
    mv binary, "swamp"
    chmod 0755, "swamp"
    bin.install "swamp"
  end

  test do
    system bin/"swamp", "--version"
  end
end

class SafariWebarchiver < Formula
  desc "Create Safari webarchive files on the command-line"
  homepage "https://github.com/alexwlchan/safari-webarchiver"
  url "https://github.com/alexwlchan/safari-webarchiver/archive/813f371f917e630bf6b300b58875f1e267616640.tar.gz"
  version "1.0.1"
  sha256 "2ab97343a1db18077efc2b55a9c946cfb398048550e3d30fc5f346e415cd5c6f"
  license "MIT"

  # Use modern swift
  depends_on xcode: "13.3"
  uses_from_macos "swift", since: :big_sur

  def install
    system "swiftc", "save_safari_webarchive.swift"
    bin.install "save_safari_webarchive"
  end

  test do
    system "#{bin}/save_safari_webarchive", "--version"
  end
end

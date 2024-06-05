class SafariWebarchiver < Formula
  desc "Create Safari webarchive files on the command-line"
  homepage "https://github.com/alexwlchan/safari-webarchiver"
  url "https://github.com/alexwlchan/safari-webarchiver/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "e0727521df075d050413e564b5951fcc176755afe4f9726b654f68d633eafba7"
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

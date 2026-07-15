class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.1.0/micropage-darwin-arm64.tar.gz"
      sha256 "05f6f76186b8515f97475138e8b3e11489933673c400e9dbf68da09a8ef800a6"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.1.0/micropage-darwin-amd64.tar.gz"
      sha256 "60029abc33d260b5c73d0a5104b313ff7942006ad0cd03e1744305e6e4a14dc9"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.1.0/micropage-linux-amd64.tar.gz"
    sha256 "8d07b5cd7de20c05db835cc7b6528362bfde236e7a2a5293b46ab4381429edac"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

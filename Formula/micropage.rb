class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.5/micropage-darwin-arm64.tar.gz"
      sha256 "e5b33f8c4c672d8744f5df6c24a2a561bb73a11aa51c8dc07667a54bea7ed422"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.5/micropage-darwin-amd64.tar.gz"
      sha256 "b1900d9b8ee844edf72b0533e78cc5fd55e98eee6bf1a6814a47df5873602f31"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.0.5/micropage-linux-amd64.tar.gz"
    sha256 "ed2bfb2f3fb749396bb00622dc7e6e5a5189b2d244bf688091da030747340e3c"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

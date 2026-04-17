class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.0/micropage-darwin-arm64.tar.gz"
      sha256 "df74c3926d7ff10916d4b7f11d6ca30bce0e2566c23b57e0ff8ca413f9363431"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.0/micropage-darwin-amd64.tar.gz"
      sha256 "90fb0f53e4002dd0bcf1289c926e9576ebfa9c33ff51857896cae83a2935ad84"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.0.0/micropage-linux-amd64.tar.gz"
    sha256 "7101aa00003d646ef06cc54264dfbadad0e95effc00cb945161d875051d80556"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

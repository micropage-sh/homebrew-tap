class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.6/micropage-darwin-arm64.tar.gz"
      sha256 "201da1437737eae5f6a96272a53add868054dab22d7551f0f043b7c80553ae1e"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.6/micropage-darwin-amd64.tar.gz"
      sha256 "b57aad73ec8be56a96f7d5b025d3bd026233725ff2534a75dbe112d1deb0d131"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.0.6/micropage-linux-amd64.tar.gz"
    sha256 "328dec533350bb693b8ee56c661840e20237cc7ab95724ac962d5ae1a995a111"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

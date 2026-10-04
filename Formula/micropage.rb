class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.1/micropage-darwin-arm64.tar.gz"
      sha256 "203052d62181aa48cf1b607f109f4a2485dee08a666278b319dad8348104e1a6"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.1/micropage-darwin-amd64.tar.gz"
      sha256 "a94d56008e82d78337107437fc729e0146809605f966cf655acbfcfb6ae95d53"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.6.1/micropage-linux-amd64.tar.gz"
    sha256 "95c90568704a3ced70c4c19958fd4ee06769c0f500ed9517374e0afcdfdc0e30"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

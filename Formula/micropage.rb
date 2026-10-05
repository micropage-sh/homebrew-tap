class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.2/micropage-darwin-arm64.tar.gz"
      sha256 "36c4c1d69947d9e7bee5292290a2d5da3012326dae7d081cf24656a3548ee4d9"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.2/micropage-darwin-amd64.tar.gz"
      sha256 "4f61bfff1b3a70c3dac995784de4c094c889ba9d71d0bd1c9e023af2c934e9f9"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.6.2/micropage-linux-amd64.tar.gz"
    sha256 "6c99017e820d122ed84d914d9b8322ed035cad38b36919cdab0d8cb5205eeb4a"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.0/micropage-darwin-arm64.tar.gz"
      sha256 "4feae2ec5ac2465f38a6b74cf95c93ba787199e81754987d0bd24c49ca5515b3"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.0/micropage-darwin-amd64.tar.gz"
      sha256 "ad74f7791a19bf6f659cddf0550fdfc3435ef4690ac3c207dafaa1a3f46f4e3f"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.6.0/micropage-linux-amd64.tar.gz"
    sha256 "d8a5cb521eccccb0efef3bcb6a82d6e87491ecc03418885125c284270f381341"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

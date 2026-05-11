class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.1/micropage-darwin-arm64.tar.gz"
      sha256 "0b019b8deb362f9ce135e6eb2c201590e1e4276fb8eb2d3fa64ac910cd57417a"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.1/micropage-darwin-amd64.tar.gz"
      sha256 "2aa1c4fc8fedbc705eb59c1767ba3a19fd9909a0f890668889649d01e5f6be6c"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.0.1/micropage-linux-amd64.tar.gz"
    sha256 "f85a9efe5003fe941a02415bc1cc2f22e0d0da28a72b06b7b74439fd17d360d9"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.4.0/micropage-darwin-arm64.tar.gz"
      sha256 "fe8ee5d2cd6ad0c11c976c3a8edc778873f50ba1216e11d9ac73c6c13a1385bf"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.4.0/micropage-darwin-amd64.tar.gz"
      sha256 "4b2c9c879cb833a5d64523456cda1007effa481b7d51713a1eb7aa422698126f"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.4.0/micropage-linux-amd64.tar.gz"
    sha256 "d749bfc0a8d68f70c7c719067ba1535ff83ae6d1f6e3bc209fec0836fc2acf8a"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

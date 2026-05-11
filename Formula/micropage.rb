class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.2/micropage-darwin-arm64.tar.gz"
      sha256 "4767b6b2aec529e9ab0ee9b8840bb59785237afba1120c504b01c637f0227b2d"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.2/micropage-darwin-amd64.tar.gz"
      sha256 "a612336f0b14fce16616205a1235a37f94e779834da42714393491f6567fea2b"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.0.2/micropage-linux-amd64.tar.gz"
    sha256 "25c35daf6b0069dab5fc4aaf67d342b96443e95d8ff221df4e154cd0a3a49d86"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

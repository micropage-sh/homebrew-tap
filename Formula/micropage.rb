class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.9.2/micropage-darwin-arm64.tar.gz"
      sha256 "d85ea0aa63cd8902c30008dfdb63fcbc12606f863058d60d199e16de75d227e0"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.9.2/micropage-darwin-amd64.tar.gz"
      sha256 "0d94938ae0baa4a633292cea7cd9c777cd3e7e9b1e5367701a9f6d922c938d44"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.9.2/micropage-linux-amd64.tar.gz"
    sha256 "a3b452c5b0281d2bd9105201a525d1b64865aa650aeae756f5ac3acfe06129d7"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

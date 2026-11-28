class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.11.0/micropage-darwin-arm64.tar.gz"
      sha256 "0294b49a0bded9c735dd4c868d193c685e7c99ae3afcde69429ef9d5d01aa1fd"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.11.0/micropage-darwin-amd64.tar.gz"
      sha256 "84ef978a15e12df3e65ac17cce9b00ef4b965702a2de8de93414f621da6993be"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.11.0/micropage-linux-amd64.tar.gz"
    sha256 "d714a3c10ee983503770d7786c3d7ec63ea3bc86fe458b5e9732c44b2f780046"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

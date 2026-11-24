class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.9.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.9.5/micropage-darwin-arm64.tar.gz"
      sha256 "db5305c0fcdac2f0ea067ebb88a927e54035fb91270928bf046ad4cfcf24ecb0"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.9.5/micropage-darwin-amd64.tar.gz"
      sha256 "f928c89104bc4390ad1241e9fc5c74f6fdfe4ffaa600e84610aa75b072d41793"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.9.5/micropage-linux-amd64.tar.gz"
    sha256 "3c4fc6f000cd46267b269d889f040ac005b2eb1cf772b7068670b8b6d731ffee"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

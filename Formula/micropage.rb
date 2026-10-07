class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.3/micropage-darwin-arm64.tar.gz"
      sha256 "8219082b0f396879629d049f37f7b170486e9d0cf70bc7c60e07cc0c7422cb33"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.3/micropage-darwin-amd64.tar.gz"
      sha256 "16ea39b631b8b1fcdea667eba3c6f668c07ad6f81adb8611cc72243c44928a76"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.6.3/micropage-linux-amd64.tar.gz"
    sha256 "150a4569d1d9ce16d508f2abbf999f8d45369e33642bbc925d6f5a12f291bfba"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

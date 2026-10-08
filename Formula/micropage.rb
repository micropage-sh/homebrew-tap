class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.6.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.7/micropage-darwin-arm64.tar.gz"
      sha256 "5a10049e61c37d9332f97e7a69a415cceadc388edc6b64210848916d39746af9"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.7/micropage-darwin-amd64.tar.gz"
      sha256 "7b215b3b8467165ea8404dc6cd6dc625d6b81d689fd31b3775d0c20404c79f45"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.6.7/micropage-linux-amd64.tar.gz"
    sha256 "c316fa5d2da81c58c29f9a385da1f75f00d5c685807407b30513cd9f5f38a61d"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

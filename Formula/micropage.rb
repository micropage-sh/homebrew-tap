class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.9.1/micropage-darwin-arm64.tar.gz"
      sha256 "09a7ff6d95cdb136d874eb90100056b6f9837becd0b15afea77803cb4e06eb4a"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.9.1/micropage-darwin-amd64.tar.gz"
      sha256 "054c626b0eb85148a0af08e34c1883aff21b6ea495e9d95e0970e4412cbcc690"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.9.1/micropage-linux-amd64.tar.gz"
    sha256 "d12b7137007103339ba7a460954dd3bdb0c0e9f81ddb3c550052c197532ba997"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

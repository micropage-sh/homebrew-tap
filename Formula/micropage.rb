class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.5.0/micropage-darwin-arm64.tar.gz"
      sha256 "3158edef76c10cdfdadd3507f7d22d03d125b13fa5aac278664a204411e092bd"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.5.0/micropage-darwin-amd64.tar.gz"
      sha256 "c6c11f1511b8fa9a652e5994bb9ea62afecbf4d9dab8e0f4217b1397aec3a5d4"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.5.0/micropage-linux-amd64.tar.gz"
    sha256 "af30d951c8145b27ed1bb644960ee2b32937e9154d9465418a0661ab8615a754"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

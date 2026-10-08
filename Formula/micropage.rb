class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.6.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.5/micropage-darwin-arm64.tar.gz"
      sha256 "bfd36528a7b0665484caa2d84e902a07a33b964b31458d35846b9573097f99b4"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.5/micropage-darwin-amd64.tar.gz"
      sha256 "d4021b3f1d5663f232c3491638cc7e3531156010bfaf46a243ab8077ff88aca8"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.6.5/micropage-linux-amd64.tar.gz"
    sha256 "23b9ef54e495bd672af9a910ce4543b5dcb31453dd64debf8219b27bfcc2ef83"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

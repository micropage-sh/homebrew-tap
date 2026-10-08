class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.8.0/micropage-darwin-arm64.tar.gz"
      sha256 "b4bad8aa6ba12def5b1fd17b1e551e5ef0af852fac388f8bb2b4cc4d51d64fb7"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.8.0/micropage-darwin-amd64.tar.gz"
      sha256 "d3f7fad5f41066528737f2d10e1c3645c7a34f749f430bbcbfe30683572a5ed5"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.8.0/micropage-linux-amd64.tar.gz"
    sha256 "66a8aaa39de8f311684b6b79706bfaf1fb95483fd64d916b3cf74b03a27dc1d8"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.8/micropage-darwin-arm64.tar.gz"
      sha256 "7f1e7ebc78360b5a24d5d3575ec3b6273bbf8842b2f17d5e6e534e9ce1504cdf"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.8/micropage-darwin-amd64.tar.gz"
      sha256 "1d4656b83e5c60c2fffdee03b0238475b275380c89d9e4dd2ee56fd9d73c6537"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.0.8/micropage-linux-amd64.tar.gz"
    sha256 "f375f71957f83288daf3342ac5d1a462cdd7999e0feb2a18bf41ad50278c1d46"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

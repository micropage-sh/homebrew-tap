class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.2.0/micropage-darwin-arm64.tar.gz"
      sha256 "3bb7eaa09cce695c513dab235c9f44c6b15d4d1ebcd7f1fa18d477e7eac6d021"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.2.0/micropage-darwin-amd64.tar.gz"
      sha256 "9a5eb208ca7e9a26965ee05e4af5094019222ec0ce588873decd1ffd0278bf94"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.2.0/micropage-linux-amd64.tar.gz"
    sha256 "1c227ccf6091a1991b9b0f547d923e468151c631df6de21ad8bf6a16566af059"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

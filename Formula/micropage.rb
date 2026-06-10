class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.7/micropage-darwin-arm64.tar.gz"
      sha256 "dcda6be806c3b66f7d59b223468891ebe42f26a332a50fd5002b58812f8210bf"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.7/micropage-darwin-amd64.tar.gz"
      sha256 "50901acba885d4664e9dec6df0a73ad3a846441643d69f1a0c40c31a8b1d0a12"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.0.7/micropage-linux-amd64.tar.gz"
    sha256 "75e4b27064108788acfec7f6a2ea8c73090bb27ccf27e9912effb45e1d185185"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

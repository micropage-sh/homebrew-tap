class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.9/micropage-darwin-arm64.tar.gz"
      sha256 "b4cb11657c8002d681b3fcf9a1d8b9764977c7de55ae19a77760aad28084e1cc"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.9/micropage-darwin-amd64.tar.gz"
      sha256 "87d5918df3f176f35af8de31885b91811ec686e27c564cc92aebe6e665a28446"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.0.9/micropage-linux-amd64.tar.gz"
    sha256 "2bbd4d874a49491677946424259f3a2063d8a18401bbcc470bb2b1fcb212f46e"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

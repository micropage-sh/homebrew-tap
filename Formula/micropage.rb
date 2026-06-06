class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.3/micropage-darwin-arm64.tar.gz"
      sha256 "d07ce78578cd82d40ed5a014080a308f5235a094b96574754d3f210cd8d4cbf4"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.3/micropage-darwin-amd64.tar.gz"
      sha256 "9d8787ddc229bb09ef002ffe58bc05ddb0c23775e867b03fcb5ca10c69ab95a5"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.0.3/micropage-linux-amd64.tar.gz"
    sha256 "a035acf39a5fab97ca71904745e9a6dae980f044f1d344f2b94eb945eb768ad9"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

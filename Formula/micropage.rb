class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.7.0/micropage-darwin-arm64.tar.gz"
      sha256 "8e5538abcf73fadfe23261173e0fc8e15660a9e1d98739501479824016919bdb"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.7.0/micropage-darwin-amd64.tar.gz"
      sha256 "4ea1b18629806adc2da9bc1b16eca944c081de8af3b27ba66086d33df0609d49"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.7.0/micropage-linux-amd64.tar.gz"
    sha256 "1899e8c236b7b53598eb45a8882b5df424471287c00e6f230555d4dbb642d1f6"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

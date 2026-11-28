class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.10.0/micropage-darwin-arm64.tar.gz"
      sha256 "8571356ca9e8e6f002263e452713efe7ae12bc73650d3c547991bc87278746db"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.10.0/micropage-darwin-amd64.tar.gz"
      sha256 "accf8b1c78bcb5d0581892d3ac8485691fbae1d1c90142e621cb983b6ea7ef2d"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.10.0/micropage-linux-amd64.tar.gz"
    sha256 "1a6f6dde73f5aa0f5250631856d4987ca740c1e47d0ca6c54fdfeed0e197f755"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

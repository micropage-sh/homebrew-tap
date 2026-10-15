class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.9.3/micropage-darwin-arm64.tar.gz"
      sha256 "d364373a6fd37a9e3bb7eece4c0d71e1ff30ba3d3b47b9588185cda339155f59"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.9.3/micropage-darwin-amd64.tar.gz"
      sha256 "4d4518fc9e01205931bc1e7a84992337ae1f10dd666bb5fd62facc3f8aa54cea"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.9.3/micropage-linux-amd64.tar.gz"
    sha256 "541787aea75647ea2b4ec1694eb50ffe1ddd7ecff5e741d91f493ae6c212316d"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

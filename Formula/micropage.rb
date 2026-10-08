class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.6.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.6/micropage-darwin-arm64.tar.gz"
      sha256 "3163a377a6e39d5ab421194968034079ee3072a9ab2c23ed65cd30944f420eea"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.6/micropage-darwin-amd64.tar.gz"
      sha256 "1f048098bc933eb5e1e59585f62ab3313a011968bf5e9bba06f8fb36438de553"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.6.6/micropage-linux-amd64.tar.gz"
    sha256 "b226f6776d76cb3947917c6c057334a2b79cbdc32066ab93ba776290734768b6"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

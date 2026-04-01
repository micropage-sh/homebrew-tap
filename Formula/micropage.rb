class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v1.0.0/micropage-darwin-arm64.tar.gz"
      sha256 "fe850e8234a373141627a0242193023a3a38d6295e2aa4ff7ab43ec98bfcd8d8"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v1.0.0/micropage-darwin-amd64.tar.gz"
      sha256 "46059aabc6b9a4485c3000253b62307970732b37304f108f04d5a60aede9b0f3"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v1.0.0/micropage-linux-amd64.tar.gz"
    sha256 "77e9a9dd72ba5038e489e5e8060ef5cd58c61c293379aaf2305cd8da20c95c5c"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.9.0/micropage-darwin-arm64.tar.gz"
      sha256 "2e9bcb7b3bafce33f6c987932e4af3538e896a2a4e8e35c1b10713e14e45519d"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.9.0/micropage-darwin-amd64.tar.gz"
      sha256 "87bda0dba954dba8b890071fc9d80e0687d9d85b5af1cee3e7b90cdb025b5822"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.9.0/micropage-linux-amd64.tar.gz"
    sha256 "3a3c7c39eae132a0bf5303ffd5bd2b74026a0f9bfb92aa0d0cf90a4424db3848"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

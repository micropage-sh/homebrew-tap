class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.4/micropage-darwin-arm64.tar.gz"
      sha256 "28d633a1fd7ad8455d693103804c888aaf87ccdfacce4236fe8632507ba7723b"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.4/micropage-darwin-amd64.tar.gz"
      sha256 "f9628aaa645da071a1e2caa1b699434d43bc5222e17b0cfeaeb926e6c68c19be"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.0.4/micropage-linux-amd64.tar.gz"
    sha256 "aeabb996c2cf4397fdbb8c31c339cd53de0001fe1d02ce2c14e3ba1a75872c60"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

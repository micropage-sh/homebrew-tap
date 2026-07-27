class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.3.0/micropage-darwin-arm64.tar.gz"
      sha256 "b7b2d2e63d59615cc70b89d3e359a76f6e528dd8f6c5c1744a9de743b7824f6a"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.3.0/micropage-darwin-amd64.tar.gz"
      sha256 "c2b41f7326dfd2ec0aeae7686ef2b5a57b0944c7c81538d726c48dfbfd636b5a"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.3.0/micropage-linux-amd64.tar.gz"
    sha256 "af177626d8d91e1382543e52731738591cb8eb60cee5883828bf2dc0702f2893"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

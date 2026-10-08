class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.6.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.4/micropage-darwin-arm64.tar.gz"
      sha256 "f963f2a599ca1af7db08ea3693ef7870a5bffd11b6dac195c05cdec276097988"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.6.4/micropage-darwin-amd64.tar.gz"
      sha256 "72b4ca4ed0ff635e7408f20dae6cfe840ad50b19a9a5a0f4146e3911db830cb3"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.6.4/micropage-linux-amd64.tar.gz"
    sha256 "21ed85c263e46ceb9055792b985a00249508abe2b1eeb3b26b9dc4ed609216b6"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

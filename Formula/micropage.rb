class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.9.4/micropage-darwin-arm64.tar.gz"
      sha256 "187ed4632b158754ad4c19fe1ad225ba5077c9b0d85cc134825e9082abf5f73d"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.9.4/micropage-darwin-amd64.tar.gz"
      sha256 "6efc0ca578a7a61b7b4558ce409511cb36d07c10d4f2f1fd6775f178ea80a981"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.9.4/micropage-linux-amd64.tar.gz"
    sha256 "49a9aadde47fd7760d4c2424856c6e7ea4db9614ac68d5f188d51fb31af6913b"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

class Micropage < Formula
  desc "CLI for micropage.sh - create, sync, and publish microsites"
  homepage "https://github.com/micropage-sh/cli"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.0/micropage-darwin-arm64.tar.gz"
      sha256 "51a2635f97b4a067f1eed8af9f2b9d2bb4ec34a92bcd6f7d5f472884bcd612c5"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.0.0/micropage-darwin-amd64.tar.gz"
      sha256 "96ee902525361ec103982e22b15e08da91ed81a48852fc914f2297d9d62eadd4"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.0.0/micropage-linux-amd64.tar.gz"
    sha256 "97872815adaf91cd271f28aeffda8e2a1a797153b1c7b109b51536f7b51aea26"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

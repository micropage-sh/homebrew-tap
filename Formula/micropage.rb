class Micropage < Formula
  desc "Keep .page files in git and publish static sites to micropage.sh"
  homepage "https://github.com/micropage-sh/cli"
  version "2.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/micropage-sh/cli/releases/download/v2.12.0/micropage-darwin-arm64.tar.gz"
      sha256 "1c396b57398c705f109ef4a16f30d381e51f3228ccb3e0e64b78a5b29093c4ea"
    else
      url "https://github.com/micropage-sh/cli/releases/download/v2.12.0/micropage-darwin-amd64.tar.gz"
      sha256 "fa966ad27e381c67ae745cc60d600eb93082da8cc28a2c716bc12a5dc117fbdf"
    end
  end

  on_linux do
    url "https://github.com/micropage-sh/cli/releases/download/v2.12.0/micropage-linux-amd64.tar.gz"
    sha256 "c78b211e1f05a1bb65e5ee5c1c8016f7de93e949a7de0be406e81d124253986d"
  end

  def install
    bin.install "micropage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/micropage --version")
  end
end

class Rsclaw < Formula
  desc "AI Agent Engine Compatible with OpenClaw"
  homepage "https://github.com/rsclaw-ai/rsclaw"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.18/rsclaw-v2026.6.18-aarch64-apple-darwin.tar.gz"
      sha256 "19a606175407f35e50c18a5f40f4afa9f34f3852c48ce30e9017ead5bddd9940"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.18/rsclaw-v2026.6.18-x86_64-apple-darwin.tar.gz"
      sha256 "6791552baccbad1a49b7b2d390c811095400ba3b6800dbaae947887e9ab703a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.18/rsclaw-v2026.6.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d4c2e0e26f3ed4f14d4c84750497d726b343f612f3d7397313b73c4b54b7bc0"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.18/rsclaw-v2026.6.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b311815f66d6e4989c46364bbe36103f86833eae112e1a65266ea660449d2f5"
    end
  end

  def install
    bin.install "rsclaw"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/rsclaw --version"))
  end
end

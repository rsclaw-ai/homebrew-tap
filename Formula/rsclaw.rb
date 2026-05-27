class Rsclaw < Formula
  desc "AI Agent Engine Compatible with OpenClaw"
  homepage "https://github.com/rsclaw-ai/rsclaw"
  version "2026.5.20"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v#{version}/rsclaw-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f689e15955eacc6784871ebbb687b054da98fbc212866dceb7da4e0018828169"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v#{version}/rsclaw-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d194f9f18907573d036820ddc6f70f230803cd13165b80dfb5fce8ac3f38e826"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v#{version}/rsclaw-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52d3ee74eeba44dd8c9f10825ac4bf1f3eb1ab7dc96bd310a5e19c1abaf1313f"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v#{version}/rsclaw-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2999a3ba8e6699354b2f11323c89aae2419c3235542c301f65cffbd7cd5d683b"
    end
  end

  def install
    bin.install "rsclaw"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/rsclaw --version"))
  end
end

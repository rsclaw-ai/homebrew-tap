class Rsclaw < Formula
  desc "AI Agent Engine Compatible with OpenClaw"
  homepage "https://github.com/rsclaw-ai/rsclaw"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.11.1/rsclaw-v2026.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "2d1593d692fefe963fc21bf7b2412d3ee5d79c737f0ab08dd3c4d3b1d3f91a1f"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.11.1/rsclaw-v2026.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "1265f3fe51908023902a2672dd0f0fb0736929ffaf59d5c340826f7c97f678fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.11.1/rsclaw-v2026.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5764ed414a5058dd64b3955ffe36c14c4fb961e6be40791844c0b8997e4cf8a8"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.11.1/rsclaw-v2026.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8170e8978f34da4091958ebf8b19d9ad093c819eab31a2a876f11660f7145357"
    end
  end

  def install
    bin.install "rsclaw"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/rsclaw --version"))
  end
end

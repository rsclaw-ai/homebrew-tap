class Rsclaw < Formula
  desc "AI Agent Engine Compatible with OpenClaw"
  homepage "https://github.com/rsclaw-ai/rsclaw"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.15/rsclaw-v2026.6.15-aarch64-apple-darwin.tar.gz"
      sha256 "4c22e3ecb9bc904bda8ea1ec55cdcadb892416645628435561a3919da2adde1b"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.15/rsclaw-v2026.6.15-x86_64-apple-darwin.tar.gz"
      sha256 "91fb0b3cfb369cfe630f91a85adc44ba94e779369d3d938ec9d91fa69ddb8bab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.15/rsclaw-v2026.6.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ee1397a8f49883d237d7161ea52b4c14ca484acdf35931ec4d937d718bd66de"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.15/rsclaw-v2026.6.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f543d5eb2cf918d51da4975b799652bfe01dab8e22fd70e351bbecc568e1ec14"
    end
  end

  def install
    bin.install "rsclaw"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/rsclaw --version"))
  end
end

class Rsclaw < Formula
  desc "AI Agent Engine Compatible with OpenClaw"
  homepage "https://github.com/rsclaw-ai/rsclaw"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.10.1/rsclaw-v2026.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "395f5cd08313384fbba1253c7299fd38797672a2c7acddbf16d8d24221adf60b"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.10.1/rsclaw-v2026.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "37ae1e369bde8cbcf3a11a1e42906f81c1af18769e4b8afad5b47383a361805d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.10.1/rsclaw-v2026.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd03584782395c584cc510f174537cf66715a0d721fb3e06d5b9f5dae4e9bcc7"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.10.1/rsclaw-v2026.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16b3a623d40e56e018dc84c6f1d4bba4b0b70c6b4f7f269e676a125be67d5083"
    end
  end

  def install
    bin.install "rsclaw"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/rsclaw --version"))
  end
end

class Rsclaw < Formula
  desc "AI Agent Engine Compatible with OpenClaw"
  homepage "https://github.com/rsclaw-ai/rsclaw"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.26/rsclaw-v2026.6.26-aarch64-apple-darwin.tar.gz"
      sha256 "b099d582f38844c175f494173e73e58e2b7d7d66be90098a37fd0339976d1ccd"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.26/rsclaw-v2026.6.26-x86_64-apple-darwin.tar.gz"
      sha256 "ee8cb6c49748ea85f0ccb47b349828672aea8dec73118d9c2eb6e040cd6522ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.26/rsclaw-v2026.6.26-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6805d41ffa6a0ca411ff1056399e6aa4a05a3bac0d24a5bea5147a841927490d"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.26/rsclaw-v2026.6.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe8c9ffdefb7596fa0726620e8b8c22ab4dee39002aaf34bb1fc0ab0f39ef6fa"
    end
  end

  def install
    bin.install "rsclaw"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/rsclaw --version"))
  end
end

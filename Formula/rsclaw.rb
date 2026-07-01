class Rsclaw < Formula
  desc "AI Agent Engine Compatible with OpenClaw"
  homepage "https://github.com/rsclaw-ai/rsclaw"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.20/rsclaw-v2026.6.20-aarch64-apple-darwin.tar.gz"
      sha256 "623d199e1a986cd56103faf741e9599e0a7ba57f88b62014b718bece96883350"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.20/rsclaw-v2026.6.20-x86_64-apple-darwin.tar.gz"
      sha256 "2a7d698d55ab1b0df155e53a3cabe4777d0fe4f0222bae15fe885302aa3f4917"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.20/rsclaw-v2026.6.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e8062c85ba579ce0b80106f28e8a0877b6befe00f1c74d998be322e04fae1403"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.20/rsclaw-v2026.6.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ddc3c0a89d394b8945299b4403a8dc8562b79fc7475d0674e9fb773c942a076e"
    end
  end

  def install
    bin.install "rsclaw"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/rsclaw --version"))
  end
end

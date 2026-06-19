class Rsclaw < Formula
  desc "AI Agent Engine Compatible with OpenClaw"
  homepage "https://github.com/rsclaw-ai/rsclaw"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.16/rsclaw-v2026.6.16-aarch64-apple-darwin.tar.gz"
      sha256 "efe5482c65202614b3360f13355dbc50468ed0b66e28b06da94f10d8007a269d"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.16/rsclaw-v2026.6.16-x86_64-apple-darwin.tar.gz"
      sha256 "696aee18fb3b23752460cf10e104713c9714e510047f785329518eff9b84ef34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.16/rsclaw-v2026.6.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28a7922109b830aec19fecf8c4209a5de108583ad7e4b44e259d74efe4a1f1df"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.16/rsclaw-v2026.6.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ab5f55887a8fcebc61f64366767f2558755a1b4e11c0301d3be4ece66012f08"
    end
  end

  def install
    bin.install "rsclaw"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/rsclaw --version"))
  end
end

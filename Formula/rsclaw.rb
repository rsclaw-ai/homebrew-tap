class Rsclaw < Formula
  desc "AI Agent Engine Compatible with OpenClaw"
  homepage "https://github.com/rsclaw-ai/rsclaw"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.13/rsclaw-v2026.6.13-aarch64-apple-darwin.tar.gz"
      sha256 "8c13d9f1459a90043e3f1028d49fa4d7b285c52255c1f1b359a13bbcb5c3d77b"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.13/rsclaw-v2026.6.13-x86_64-apple-darwin.tar.gz"
      sha256 "0b802ae7b5b6c021d3d968340cdc3c59bd2c65e073d34e15def05c4b11f572a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.13/rsclaw-v2026.6.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2651544e54b6d4ea66860d96545403e5be7661e153feb64d8085afe269668404"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.6.13/rsclaw-v2026.6.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bde3dd74448dd71b36a2898807ebf7be5c6c37a8eb71029867655428af1adce"
    end
  end

  def install
    bin.install "rsclaw"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/rsclaw --version"))
  end
end

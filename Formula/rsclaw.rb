class Rsclaw < Formula
  desc "AI Agent Engine Compatible with OpenClaw"
  homepage "https://github.com/rsclaw-ai/rsclaw"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.8.28/rsclaw-v2026.8.28-aarch64-apple-darwin.tar.gz"
      sha256 "7ddc479215391c7719b37ee54ebabfd645253630da6101547ba7ddc03b94dc43"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.8.28/rsclaw-v2026.8.28-x86_64-apple-darwin.tar.gz"
      sha256 "bb6c0ac7f49fe0a115fabf61f196098457a8caa7985528dd2239a1dc53b66c46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.8.28/rsclaw-v2026.8.28-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "262e4878abb0fc1945119dcc3745af2bf37832c2e1c99b268c309c42688432d3"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.8.28/rsclaw-v2026.8.28-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a80d8663cea3f5c386650a96412193940cf7cbab95239a57719bf46667df953"
    end
  end

  def install
    bin.install "rsclaw"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/rsclaw --version"))
  end
end

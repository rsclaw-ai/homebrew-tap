class Rsclaw < Formula
  desc "AI Agent Engine Compatible with OpenClaw"
  homepage "https://github.com/rsclaw-ai/rsclaw"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.8.6/rsclaw-v2026.8.6-aarch64-apple-darwin.tar.gz"
      sha256 "322a1de8e43ce72e78e50949c06a81ec69fd8d954529662600f6cbcb3ecaf310"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.8.6/rsclaw-v2026.8.6-x86_64-apple-darwin.tar.gz"
      sha256 "de8a8d7aacfa0d6385498633fa974918e0be3b8b94d62cd601e706c6e1f2e743"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.8.6/rsclaw-v2026.8.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7404473870e35acc5873c82bf0c2387da999bf01eed8efd83218a52d3d045d8"
    else
      url "https://github.com/rsclaw-ai/rsclaw/releases/download/v2026.8.6/rsclaw-v2026.8.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82d010be05d721772d8b41fcb432c4dbc2179f56f059d7f777b2815266f9c14a"
    end
  end

  def install
    bin.install "rsclaw"
  end

  test do
    assert_match(/\d+\.\d+\.\d+/, shell_output("#{bin}/rsclaw --version"))
  end
end

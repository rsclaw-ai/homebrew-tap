cask "rsclaw" do
  version "2026.8.28"

  on_arm do
    url "https://github.com/rsclaw-ai/rsclaw/releases/download/app-v#{version}/RsClaw-v#{version}-aarch64-apple-darwin.dmg"
    sha256 "73349149b0a83add15064f2acbc3b817947125ab3876a5d32bc4c77fb5667b15"
  end
  on_intel do
    url "https://github.com/rsclaw-ai/rsclaw/releases/download/app-v#{version}/RsClaw-v#{version}-x86_64-apple-darwin.dmg"
    sha256 "33555a3519e11aadbfe280397b109659c7480b5e9fedbb0490697ee1fbd4dc55"
  end

  name "RsClaw"
  desc "AI Agent Engine — desktop app"
  homepage "https://github.com/rsclaw-ai/rsclaw"

  app "RsClaw.app"

  zap trash: [
    "~/.rsclaw",
    "~/Library/Application Support/ai.rsclaw",
    "~/Library/Caches/ai.rsclaw",
    "~/Library/Preferences/ai.rsclaw.plist",
  ]
end

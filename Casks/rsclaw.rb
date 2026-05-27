cask "rsclaw" do
  version "2026.5.20"

  on_arm do
    url "https://github.com/rsclaw-ai/rsclaw/releases/download/app-v#{version}/RsClaw-v#{version}-aarch64-apple-darwin.dmg"
    sha256 "562239b9a1c8761a047f253fba69e6ff4c9d70c2daf6fc6a9e8db9d9fb9a67aa"
  end
  on_intel do
    url "https://github.com/rsclaw-ai/rsclaw/releases/download/app-v#{version}/RsClaw-v#{version}-x86_64-apple-darwin.dmg"
    sha256 "82acbc3fe4bb7e386eb218f0f25ff70012d1a4dfba595b5ca1b04d1eb3e93eaf"
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

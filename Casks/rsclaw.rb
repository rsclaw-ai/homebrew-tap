cask "rsclaw" do
  version "2026.11.1"

  on_arm do
    url "https://github.com/rsclaw-ai/rsclaw/releases/download/app-v#{version}/RsClaw-v#{version}-aarch64-apple-darwin.dmg"
    sha256 "3fd0d4235b3ba894e0a9064159dfc095416d1342d452d6c42c83a3ee619fc7e5"
  end
  on_intel do
    url "https://github.com/rsclaw-ai/rsclaw/releases/download/app-v#{version}/RsClaw-v#{version}-x86_64-apple-darwin.dmg"
    sha256 "6c1db32d9b49409d27727fcea73c28b6014da978673c57bb99ba911cb123153c"
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

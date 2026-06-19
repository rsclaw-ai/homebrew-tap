cask "rsclaw" do
  version "2026.6.16"

  on_arm do
    url "https://github.com/rsclaw-ai/rsclaw/releases/download/app-v#{version}/RsClaw-v#{version}-aarch64-apple-darwin.dmg"
    sha256 "b4a8a15eabb028ab56d63ed54f6241ddd06b11f73b8394eb7a123fa10e03ff30"
  end
  on_intel do
    url "https://github.com/rsclaw-ai/rsclaw/releases/download/app-v#{version}/RsClaw-v#{version}-x86_64-apple-darwin.dmg"
    sha256 "d827d0cef9dd155654420ef867f30da23a920c960a16427c3e84b5bd5f0e9e54"
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

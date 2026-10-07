cask "rsclaw" do
  version "2026.10.1"

  on_arm do
    url "https://github.com/rsclaw-ai/rsclaw/releases/download/app-v#{version}/RsClaw-v#{version}-aarch64-apple-darwin.dmg"
    sha256 "edd61c4a94ddc046a83b1a551e98b16f4088944882ae7d11c493f012555c7dde"
  end
  on_intel do
    url "https://github.com/rsclaw-ai/rsclaw/releases/download/app-v#{version}/RsClaw-v#{version}-x86_64-apple-darwin.dmg"
    sha256 "2590661905304bc41a06bb0b602c63d83fae1f4d9aeecd60fd410f290fbe40b4"
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

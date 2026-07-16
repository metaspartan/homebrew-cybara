cask "cybara" do
  version "1.0.1686"
  on_arm { sha256 "6a964cc7cbcd09859c66fef5c648226289e8c2087cf6afeabe1453c46a2637f6"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1686/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "00d0a55f45770b0fb8f705ee93f0251cecd25872ca48a27635f8d06514f536bc"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1686/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

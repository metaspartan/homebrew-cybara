cask "cybara" do
  version "1.0.1452"
  on_arm { sha256 "2aed839869e53c6ff4fa38459b1f2e3e9b0b428968d47c3db242a9319a88f41b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1452/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "cb4a64e12cb4ce4794f3eb21404ec8e6dee110da9d530f9b901c09c8bd656887"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1452/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

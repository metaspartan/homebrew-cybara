cask "cybara" do
  version "1.0.1273"
  on_arm { sha256 "d754f6fe934a779fb8eac55e905e836b34d2512eabbec513857bf1d45dc6f6f0"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1273/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "7bdd3a5b16c34a383942c40d0aa326c4de2120e96e574d6ef0b91e6f05c56825"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1273/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

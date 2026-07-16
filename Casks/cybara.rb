cask "cybara" do
  version "1.0.1709"
  on_arm { sha256 "cd66dfb31fc2a02baf8b01f2e39d7d764c0b2abdc0157cdd36fb31a58fde281e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1709/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "e8aa5be63b9d23efe42d44b6e3c581d47f1ad2c9e6d2595228f3389db29f92c6"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1709/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

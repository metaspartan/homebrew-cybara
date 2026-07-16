cask "cybara" do
  version "1.0.1711"
  on_arm { sha256 "006dc71c0fdf9fe13f33cc063893e4bd851d5f4c540f10a10c0f1a0cf01c8ece"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1711/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "1caf52064f55be5173a362d24ea9f753ccf9dd98b277ac02ca3a135d43f37f53"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1711/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

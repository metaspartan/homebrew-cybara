cask "cybara" do
  version "1.0.1439"
  on_arm { sha256 "68207e5dbf6163e3f2499be370a766cca43627f968cf88759f46b91591008c06"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1439/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "9ca7c12425dbc2ad14d9df8285bc6867482f972968dd558ed0e08c1c9f7681c2"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1439/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

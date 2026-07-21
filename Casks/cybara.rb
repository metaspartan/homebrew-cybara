cask "cybara" do
  version "1.0.1824"
  on_arm { sha256 "80b8166ee5de55fbbe095d93ad0738787825f4645649efb9c1af77a8086d0bf4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1824/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "37b00c19db17dc797efc65c3dadac3ea855d6506e363e72655f4705f61af349a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1824/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

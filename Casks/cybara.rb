cask "cybara" do
  version "1.0.1922"
  on_arm { sha256 "049facf33749b6221449c1c9e6d01bc8900659670192b696ded9be783bfee58c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1922/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "f79c46022d7ef8f1cf19a6a9d9e83914f7b2ead63d9daeaea13d9a04a56b4142"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1922/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

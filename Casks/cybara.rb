cask "cybara" do
  version "1.0.1597"
  on_arm { sha256 "7057f6b253f9d7efd6b2834dc30984352e884835ee72655b8454226cddd69959"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1597/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "c14f759f7758cd2307862252a79baf107d820d92385871f7916b718201fa651a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1597/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

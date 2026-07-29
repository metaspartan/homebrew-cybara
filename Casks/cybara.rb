cask "cybara" do
  version "1.0.2005"
  on_arm { sha256 "5b6f433328ea1af5f22336aff06e55cbf9acfa503de5dc8de8a40e9624998991"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2005/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "d14256b335402f6bc9bffe809b8ab12e0ce13b762afbcf8c0d308d32ad641204"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2005/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

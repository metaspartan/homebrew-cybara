cask "cybara" do
  version "1.0.1691"
  on_arm { sha256 "3624e898078f8b78e6040949ffe35dcd74ff7e5ed9f359b56d19c8ee4e139371"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1691/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "294a3a539db35a6fcdf23d4717514da88e564bdb261f78898f1ce622af97b84a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1691/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

cask "cybara" do
  version "1.0.1585"
  on_arm { sha256 "10a8df0c8ad0b94c1691444454ecd5ae356a6f6a6b212a450536eb243732c6dc"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1585/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "3af9e22497389bf42d7965605e44f25b4f64274cc6c53f9d4ba73c8666df7789"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1585/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

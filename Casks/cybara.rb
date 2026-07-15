cask "cybara" do
  version "1.0.1573"
  on_arm { sha256 "40a0bb2b166667e1a5db6f032e3dbb239f405c910fcaad5e46bd191a1993f017"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1573/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "a9888159a087c0fea7eec9f8b572235acf1742428725933226365bcc5ecdf269"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1573/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

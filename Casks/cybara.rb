cask "cybara" do
  version "1.0.2162"
  on_arm { sha256 "81dd510851770fbf90b858536fa3716ef47d7e5ddbbdd150a709788f0aac734d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2162/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "8d1b1673c947678b97e2c7ac82fb50518004360e309e3ca5c78568f96bfc66eb"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2162/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

cask "cybara" do
  version "1.0.1504"
  on_arm { sha256 "2c7f3ee0e95b3cb5229d229b8bc2ae1c278edb0d89acfd925e203c19a48e573c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1504/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "90b8bda6c84b105350fd28675ea233dcdaa25be1ae49d0044d50e4b5b6ef8950"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1504/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

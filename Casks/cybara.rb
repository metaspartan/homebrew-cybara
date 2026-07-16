cask "cybara" do
  version "1.0.1703"
  on_arm { sha256 "6877a912d5358820fc033be8f841d4eca3da35a30db9c71bdefab8c5d9adaaed"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1703/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "474526dec0a0416244e0b9696d17c7c4e848048584edacbed205ded4dd0d1415"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1703/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

cask "cybara" do
  version "1.0.1649"
  on_arm { sha256 "49be6ccc3e1267fec42a0a782bc6d024e913368b41be549bf72902df39f6580a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1649/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "9c2962f76b055d92a51f408a78f42d383b68e3ea4bdb59db22cb169b1ab5c5cc"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1649/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

cask "cybara" do
  version "1.0.1212"
  on_arm { sha256 "47233fa1451fc22af988e193b14abf3fbf167787d014bb7a0edb3b97309917c0"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1212/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "8deff0ec69fab233d98155e2231b4bba3dada6b530274144d3a2b43f6ec7b22b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1212/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

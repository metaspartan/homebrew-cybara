cask "cybara" do
  version "1.0.1506"
  on_arm { sha256 "e4e48bc1270348797834a0f29a63cd3288ab287566b3a705fb8f5377f4aadc4f"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1506/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "b509c4228eef6243d760ee8a3722cf7238bafdabedfa2f34d2299d55cf4e58c1"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1506/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

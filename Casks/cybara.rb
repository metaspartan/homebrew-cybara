cask "cybara" do
  version "1.0.1246"
  on_arm { sha256 "b50f02afedc1129697fce295e856a4aa2a37b461c10742e02a4667804e5b630b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1246/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "1be8b5ca31c3ca0518473104b34e3d0122337d26a5201a7b5f501462ccb49ca4"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1246/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

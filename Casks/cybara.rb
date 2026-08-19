cask "cybara" do
  version "1.0.2139"
  on_arm { sha256 "a2cf9bd62070130d89d7a245cc60315cfbb0149dcb40a9198b781e3220550c36"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2139/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "8162dc9a1c9c67f4558bafc7983cecdd401de092a9cebb701faa41c6acece291"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2139/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

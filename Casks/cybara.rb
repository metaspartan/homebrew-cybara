cask "cybara" do
  version "1.0.1833"
  on_arm { sha256 "39393a79aad84ab98fedfc0095a7e45f6b39ff9f3f1f5c6d96d8af80d04acd17"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1833/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "1ec02ec88625990e542b68c429c35cb168856ed1c9a674f73d8ae2ea015b0ced"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1833/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

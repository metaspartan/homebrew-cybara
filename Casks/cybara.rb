cask "cybara" do
  version "1.0.1464"
  on_arm { sha256 "48e47d0270dc999f49f9fd4e60cb88cd74bad801394212d713a4aa814f2fbb84"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1464/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "6734964760a86f9264c6605fe0cb20fab87222b37c457e6ade99627f7defa335"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1464/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

cask "cybara" do
  version "1.0.1269"
  on_arm { sha256 "19d43cd94c13faf4a2b485e82de503ee97f06401abcddb7d540f74d305ff2864"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1269/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "880a2510bd3c856bce69b5630633aedffd2dfbfb3c4bfa80bd83304dd8df4544"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1269/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

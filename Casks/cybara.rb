cask "cybara" do
  version "1.0.1493"
  on_arm { sha256 "c836f9371a801f6973e8ca69d0761c93f50652e395b4c90d3b939c124a77c39e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1493/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "9c9e7e65de8899129dc81ca79fa4709446512c33ba9c57f626b157ba200bb4dd"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1493/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

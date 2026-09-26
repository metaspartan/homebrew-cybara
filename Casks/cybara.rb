cask "cybara" do
  version "1.0.2394"
  on_arm { sha256 "4beda2073ca54e30d0a8aea76cae58a966f5c41db7e433df167d680be74017ac"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2394/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "6b18ef85454d1ce16c281d4d3a283e7cad90c3dcc08479da94b0e70226d065d6"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2394/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

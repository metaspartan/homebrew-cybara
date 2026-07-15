cask "cybara" do
  version "1.0.1570"
  on_arm { sha256 "21cd565d9af3481ac8c3957fcfbee1e6d3c62f6f720307a920bf889864d46978"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1570/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "43dd5da7507cb6e8ce41a755798ab1a94933b1e312d22310e8f5fce28e3432ed"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1570/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

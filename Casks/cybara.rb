cask "cybara" do
  version "1.0.1861"
  on_arm { sha256 "c046870f93483ffcc61ea9b3ce72015a0cef080776756360b8c4503070228e62"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1861/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "4059629d3bab98d558dbe63575e0396cf88a01db08d1f2d55c1ed43758ddae17"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1861/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

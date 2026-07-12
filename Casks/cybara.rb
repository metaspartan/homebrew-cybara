cask "cybara" do
  version "1.0.1366"
  on_arm { sha256 "5c1af3690584722dbe54956db18cc99507cf191d8fa10e7520cbafe2bd1c4fc8"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1366/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "5b799ef218eba343efa687dd7a2c8b4c1db6ffe6733c691b5fd25126dc5ccfa5"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1366/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

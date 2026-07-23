cask "cybara" do
  version "1.0.1878"
  on_arm { sha256 "11c0ac5a9a5623bc41ceef2fe8814de5c5180e3d03520162adaebac65a7cd5e2"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1878/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "cfc4998d5559bf00eb71b513b09e9399c5a9b69b4397f869d232b8a5dbaebb3c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1878/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

cask "cybara" do
  version "1.0.1525"
  on_arm { sha256 "eeaf0634ca6910c8a2908b1b19cf87d98da54d2c29f38952e59740145a51c159"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1525/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "88e4dad74556d461616ab4383bdbc18107acb8762513bf170e5c977a2830ab4a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1525/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

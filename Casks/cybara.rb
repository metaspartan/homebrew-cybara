cask "cybara" do
  version "1.0.1235"
  on_arm { sha256 "f0f744de0e738e8ad783f6b9acd509f2a1de80ba98c2bbb25560cf2da03c1cd0"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1235/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "37899ab53cc7c999dfbe91f30e0c9a0a7ccc15f87aa3169c1c02a4a9c05f05ec"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1235/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

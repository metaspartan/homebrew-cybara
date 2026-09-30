cask "cybara" do
  version "1.0.2447"
  on_arm { sha256 "a18635b4b6bdb9e64cc1bbd70f49b44c4b9772cc571b42cdfd95a4900b1bc466"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2447/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "2bc6e9ecf7db4da5f759942c2a6239061126fb56839be365740e0fc779f135c0"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2447/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

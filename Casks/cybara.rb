cask "cybara" do
  version "1.0.1578"
  on_arm { sha256 "233b4d32cfd9486152d5332652fca969eebfda9216acb6e311bf0f39c4845f46"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1578/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "33cbe778e25d325f25bf21d3b2ea8615c93c3f477cf6180f68ac07089c056ce6"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1578/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

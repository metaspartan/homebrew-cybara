cask "cybara" do
  version "1.0.2121"
  on_arm { sha256 "837dff61a2d84aa6f9e8cf027f8c58cd1292a1110afbb0e99365d739c7cae705"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2121/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "51b3aa9f82301629f900bec5053aedaee998f7d23f2297bfb0ebe0a4713f79c0"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2121/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

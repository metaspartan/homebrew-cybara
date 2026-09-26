cask "cybara" do
  version "1.0.2410"
  on_arm { sha256 "39b3349300e40614f441c7a15e1b28c99a67b904cba58d2b3f26b534475e523f"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2410/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "4d9d81110ab9a6cb9490ed7c67605e934ccbe968348b96503b0be7723403dd6f"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2410/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

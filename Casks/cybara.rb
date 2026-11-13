cask "cybara" do
  version "1.0.2586"
  on_arm { sha256 "3852b019a0f965c3ddb24b58a4f211b1ee151e6a032c90c3e33f0af7c0e56f8f"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2586/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "4f8cead8312d1bd64f3c5c702818637f810e39c1d3787998a6906c93d5390fa9"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2586/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

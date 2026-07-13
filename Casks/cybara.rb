cask "cybara" do
  version "1.0.1455"
  on_arm { sha256 "7249e2ade56ab26e711f8697c7ad7adfbd0d9c7385cdae3d7ad79f53bd587400"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1455/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "83591442c1954d578f68792cb047a9df77bec86cdd7502a0c1ea143634a41587"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1455/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

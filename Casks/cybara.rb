cask "cybara" do
  version "1.0.2092"
  on_arm { sha256 "78c3cdc7629d74d7836c874730f060c35c1df28d63884a3b1497220f8f05b40e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2092/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "d3ca33f9ec1ceffdbd9bfd99c5ade83c613b3edb9a7274dc0fd966aa84add050"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2092/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

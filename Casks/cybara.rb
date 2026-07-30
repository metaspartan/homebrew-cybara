cask "cybara" do
  version "1.0.2012"
  on_arm { sha256 "3c899d125716dbc17cc57b8934265cfd573cb853a5b2e3c1f6835eedc2cf1497"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2012/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "cea4fd067af5a2849467b4da6e4c2ce5099c04084905f212c085cb6d943550ef"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2012/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end

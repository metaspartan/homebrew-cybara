cask "cybara" do
  version "1.0.1528"
  on_arm { sha256 "5c048cface82147850ce8d5c4ba705800ab5a5905b0ef170d5a492401f56f3ee"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1528/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "4ed86f3c9eb5aa615cd5c372b72a39cabec8dc34bee9ed8869b934a72e63cdd3"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1528/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
